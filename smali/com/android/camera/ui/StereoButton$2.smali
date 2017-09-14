.class Lcom/android/camera/ui/StereoButton$2;
.super Ljava/lang/Object;
.source "StereoButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/StereoButton;->dismissScale(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/StereoButton;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/StereoButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/StereoButton;

    .prologue
    .line 445
    iput-object p1, p0, Lcom/android/camera/ui/StereoButton$2;->this$0:Lcom/android/camera/ui/StereoButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/camera/ui/StereoButton$2;->this$0:Lcom/android/camera/ui/StereoButton;

    invoke-static {v0}, Lcom/android/camera/ui/StereoButton;->-get1(Lcom/android/camera/ui/StereoButton;)Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ModeExitView;->setTranslationY(F)V

    .line 447
    return-void
.end method
