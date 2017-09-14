.class public Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;
.super Ljava/lang/Object;
.source "CameraHardwareProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/hardware/CameraHardwareProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraHardwareFace"
.end annotation


# instance fields
.field public ageFemale:F

.field public ageMale:F

.field public beautyscore:F

.field public blinkDetected:I

.field public faceRecognised:I

.field public faceType:I

.field public gender:F

.field public id:I

.field public leftEye:Landroid/graphics/Point;

.field public mouth:Landroid/graphics/Point;

.field public prob:F

.field public rect:Landroid/graphics/Rect;

.field public rightEye:Landroid/graphics/Point;

.field public score:I

.field public smileDegree:I

.field public smileScore:I

.field public t2tStop:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->id:I

    .line 200
    iput-object v2, p0, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->leftEye:Landroid/graphics/Point;

    .line 201
    iput-object v2, p0, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rightEye:Landroid/graphics/Point;

    .line 202
    iput-object v2, p0, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->mouth:Landroid/graphics/Point;

    .line 207
    iput v1, p0, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->smileDegree:I

    .line 208
    iput v1, p0, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->smileScore:I

    .line 209
    iput v1, p0, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->blinkDetected:I

    .line 210
    iput v1, p0, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->faceRecognised:I

    .line 211
    iput v1, p0, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->faceType:I

    .line 212
    iput v1, p0, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->t2tStop:I

    .line 215
    return-void
.end method

.method public static convertCameraHardwareFace([Landroid/hardware/Camera$Face;)[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;
    .locals 4
    .param p0, "faces"    # [Landroid/hardware/Camera$Face;

    .prologue
    .line 219
    array-length v2, p0

    new-array v1, v2, [Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    .line 220
    .local v1, "qcomFaces":[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 221
    new-instance v2, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    invoke-direct {v2}, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;-><init>()V

    aput-object v2, v1, v0

    .line 222
    aget-object v2, v1, v0

    aget-object v3, p0, v0

    invoke-static {v2, v3}, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->copyFace(Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;Landroid/hardware/Camera$Face;)V

    .line 220
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 225
    :cond_0
    return-object v1
.end method

.method private static copyFace(Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;Landroid/hardware/Camera$Face;)V
    .locals 10
    .param p0, "cameraface"    # Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;
    .param p1, "face"    # Landroid/hardware/Camera$Face;

    .prologue
    .line 229
    invoke-virtual {p1}, Landroid/hardware/Camera$Face;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 230
    .local v4, "fs":[Ljava/lang/reflect/Field;
    const/4 v6, 0x0

    array-length v7, v4

    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v3, v4, v6

    .line 232
    .local v3, "f":Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 233
    .local v5, "localField":Ljava/lang/reflect/Field;
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, p0, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2

    .line 230
    .end local v5    # "localField":Ljava/lang/reflect/Field;
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 228
    .end local v3    # "f":Ljava/lang/reflect/Field;
    :cond_0
    return-void

    .line 234
    .restart local v3    # "f":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_1

    .line 235
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalAccessException;
    goto :goto_1

    .line 236
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    .local v2, "e":Ljava/lang/NoSuchFieldException;
    goto :goto_1
.end method
