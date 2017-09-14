.class public final enum Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;
.super Ljava/lang/Enum;
.source "CameraMTK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/camera_adapter/CameraMTK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FBLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;

.field public static final enum HIGH:Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;

.field public static final enum LOW:Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;

.field public static final enum MEDIUM:Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 505
    new-instance v0, Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;

    const-string/jumbo v1, "LOW"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;->LOW:Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;

    new-instance v0, Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;

    const-string/jumbo v1, "MEDIUM"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;->MEDIUM:Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;

    new-instance v0, Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;

    const-string/jumbo v1, "HIGH"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;->HIGH:Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;

    .line 504
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;

    sget-object v1, Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;->LOW:Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;->MEDIUM:Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;->HIGH:Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;->$VALUES:[Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 504
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 504
    const-class v0, Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;
    .locals 1

    .prologue
    .line 504
    sget-object v0, Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;->$VALUES:[Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;

    return-object v0
.end method
