.class public final enum Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;
.super Ljava/lang/Enum;
.source "CameraMTK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/camera_adapter/CameraMTK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FaceNo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

.field public static final enum MULTIPLE:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

.field public static final enum NONE:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

.field public static final enum SINGLE:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 511
    new-instance v0, Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;->NONE:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    new-instance v0, Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    const-string/jumbo v1, "SINGLE"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;->SINGLE:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    new-instance v0, Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    const-string/jumbo v1, "MULTIPLE"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;->MULTIPLE:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    .line 510
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    sget-object v1, Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;->NONE:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;->SINGLE:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;->MULTIPLE:Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;->$VALUES:[Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 510
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 510
    const-class v0, Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;
    .locals 1

    .prologue
    .line 510
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;->$VALUES:[Lcom/android/camera/camera_adapter/CameraMTK$FaceNo;

    return-object v0
.end method
