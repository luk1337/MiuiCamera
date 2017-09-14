.class Lcom/android/camera/ui/V6SettingsStatusBar$1;
.super Ljava/lang/Object;
.source "V6SettingsStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/V6SettingsStatusBar;->animateOut(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/V6SettingsStatusBar;

.field final synthetic val$callback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/V6SettingsStatusBar;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/V6SettingsStatusBar;
    .param p2, "val$callback"    # Ljava/lang/Runnable;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/camera/ui/V6SettingsStatusBar$1;->this$0:Lcom/android/camera/ui/V6SettingsStatusBar;

    iput-object p2, p0, Lcom/android/camera/ui/V6SettingsStatusBar$1;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingsStatusBar$1;->this$0:Lcom/android/camera/ui/V6SettingsStatusBar;

    invoke-static {v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->-get0(Lcom/android/camera/ui/V6SettingsStatusBar;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingsStatusBar$1;->this$0:Lcom/android/camera/ui/V6SettingsStatusBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6SettingsStatusBar;->setVisibility(I)V

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingsStatusBar$1;->val$callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingsStatusBar$1;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingsStatusBar$1;->this$0:Lcom/android/camera/ui/V6SettingsStatusBar;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6SettingsStatusBar;->setAlpha(F)V

    .line 82
    return-void
.end method
