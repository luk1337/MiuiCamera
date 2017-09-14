.class final enum Lcom/android/camera/ui/StereoButton$AnimationType;
.super Ljava/lang/Enum;
.source "StereoButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/StereoButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AnimationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/ui/StereoButton$AnimationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/ui/StereoButton$AnimationType;

.field public static final enum COLLAPSE:Lcom/android/camera/ui/StereoButton$AnimationType;

.field public static final enum EXPAND:Lcom/android/camera/ui/StereoButton$AnimationType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 502
    new-instance v0, Lcom/android/camera/ui/StereoButton$AnimationType;

    const-string/jumbo v1, "COLLAPSE"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/ui/StereoButton$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/ui/StereoButton$AnimationType;->COLLAPSE:Lcom/android/camera/ui/StereoButton$AnimationType;

    .line 503
    new-instance v0, Lcom/android/camera/ui/StereoButton$AnimationType;

    const-string/jumbo v1, "EXPAND"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/ui/StereoButton$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/ui/StereoButton$AnimationType;->EXPAND:Lcom/android/camera/ui/StereoButton$AnimationType;

    .line 501
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/camera/ui/StereoButton$AnimationType;

    sget-object v1, Lcom/android/camera/ui/StereoButton$AnimationType;->COLLAPSE:Lcom/android/camera/ui/StereoButton$AnimationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/ui/StereoButton$AnimationType;->EXPAND:Lcom/android/camera/ui/StereoButton$AnimationType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/camera/ui/StereoButton$AnimationType;->$VALUES:[Lcom/android/camera/ui/StereoButton$AnimationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 501
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/ui/StereoButton$AnimationType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 501
    const-class v0, Lcom/android/camera/ui/StereoButton$AnimationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/StereoButton$AnimationType;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/ui/StereoButton$AnimationType;
    .locals 1

    .prologue
    .line 501
    sget-object v0, Lcom/android/camera/ui/StereoButton$AnimationType;->$VALUES:[Lcom/android/camera/ui/StereoButton$AnimationType;

    return-object v0
.end method
