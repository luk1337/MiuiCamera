.class Lcom/android/camera/snap/SnapCamera$2;
.super Landroid/view/OrientationEventListener;
.source "SnapCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/snap/SnapCamera;->initOrientationListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/snap/SnapCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/snap/SnapCamera;Landroid/content/Context;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/snap/SnapCamera;
    .param p2, "$anonymous0"    # Landroid/content/Context;
    .param p3, "$anonymous1"    # I

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/camera/snap/SnapCamera$2;->this$0:Lcom/android/camera/snap/SnapCamera;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    .line 197
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 6
    .param p1, "orientation"    # I

    .prologue
    const/16 v5, 0xe1

    const/16 v4, 0x87

    .line 201
    const/4 v0, 0x0

    .line 202
    .local v0, "angle":I
    const/16 v3, 0x2d

    if-gt v3, p1, :cond_1

    if-ge p1, v4, :cond_1

    .line 203
    const/16 v0, 0xb4

    .line 217
    :goto_0
    const/4 v2, -0x1

    .line 218
    .local v2, "toAngle":I
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/snap/SnapCamera$2;->this$0:Lcom/android/camera/snap/SnapCamera;

    invoke-static {v4}, Lcom/android/camera/snap/SnapCamera;->-get2(Lcom/android/camera/snap/SnapCamera;)I

    move-result v4

    aget-object v1, v3, v4

    .line 219
    .local v1, "info":Landroid/hardware/Camera$CameraInfo;
    const/4 v3, -0x1

    if-eq v0, v3, :cond_5

    .line 220
    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 221
    rsub-int v3, v0, 0x168

    rem-int/lit16 v2, v3, 0x168

    .line 229
    :goto_1
    iget-object v3, p0, Lcom/android/camera/snap/SnapCamera$2;->this$0:Lcom/android/camera/snap/SnapCamera;

    invoke-static {v3}, Lcom/android/camera/snap/SnapCamera;->-get5(Lcom/android/camera/snap/SnapCamera;)I

    move-result v3

    if-eq v3, v2, :cond_0

    .line 230
    iget-object v3, p0, Lcom/android/camera/snap/SnapCamera$2;->this$0:Lcom/android/camera/snap/SnapCamera;

    invoke-virtual {v3, v2}, Lcom/android/camera/snap/SnapCamera;->updateCameraOrientation(I)V

    .line 231
    iget-object v3, p0, Lcom/android/camera/snap/SnapCamera$2;->this$0:Lcom/android/camera/snap/SnapCamera;

    invoke-static {v3, v2}, Lcom/android/camera/snap/SnapCamera;->-set0(Lcom/android/camera/snap/SnapCamera;I)I

    .line 200
    :cond_0
    return-void

    .line 204
    .end local v1    # "info":Landroid/hardware/Camera$CameraInfo;
    .end local v2    # "toAngle":I
    :cond_1
    if-gt v4, p1, :cond_2

    if-ge p1, v5, :cond_2

    .line 205
    const/16 v0, 0x10e

    .line 204
    goto :goto_0

    .line 206
    :cond_2
    if-gt v5, p1, :cond_3

    const/16 v3, 0x13b

    if-ge p1, v3, :cond_3

    .line 207
    const/4 v0, 0x0

    .line 206
    goto :goto_0

    .line 209
    :cond_3
    const/16 v0, 0x5a

    goto :goto_0

    .line 223
    .restart local v1    # "info":Landroid/hardware/Camera$CameraInfo;
    .restart local v2    # "toAngle":I
    :cond_4
    rem-int/lit16 v2, v0, 0x168

    goto :goto_1

    .line 226
    :cond_5
    iget v2, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    goto :goto_1
.end method
