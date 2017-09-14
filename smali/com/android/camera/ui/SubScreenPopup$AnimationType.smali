.class final enum Lcom/android/camera/ui/SubScreenPopup$AnimationType;
.super Ljava/lang/Enum;
.source "SubScreenPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/SubScreenPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AnimationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/ui/SubScreenPopup$AnimationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/ui/SubScreenPopup$AnimationType;

.field public static final enum SLIDE_DOWN_POPUP:Lcom/android/camera/ui/SubScreenPopup$AnimationType;

.field public static final enum SLIDE_UP_POPUP:Lcom/android/camera/ui/SubScreenPopup$AnimationType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 357
    new-instance v0, Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    const-string/jumbo v1, "SLIDE_DOWN_POPUP"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/ui/SubScreenPopup$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/ui/SubScreenPopup$AnimationType;->SLIDE_DOWN_POPUP:Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    .line 358
    new-instance v0, Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    const-string/jumbo v1, "SLIDE_UP_POPUP"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/ui/SubScreenPopup$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/ui/SubScreenPopup$AnimationType;->SLIDE_UP_POPUP:Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    .line 356
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    sget-object v1, Lcom/android/camera/ui/SubScreenPopup$AnimationType;->SLIDE_DOWN_POPUP:Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/ui/SubScreenPopup$AnimationType;->SLIDE_UP_POPUP:Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/camera/ui/SubScreenPopup$AnimationType;->$VALUES:[Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 356
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/ui/SubScreenPopup$AnimationType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 356
    const-class v0, Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/ui/SubScreenPopup$AnimationType;
    .locals 1

    .prologue
    .line 356
    sget-object v0, Lcom/android/camera/ui/SubScreenPopup$AnimationType;->$VALUES:[Lcom/android/camera/ui/SubScreenPopup$AnimationType;

    return-object v0
.end method
