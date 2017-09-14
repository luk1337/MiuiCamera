.class public Lcom/android/camera/AudioCapture;
.super Ljava/lang/Object;
.source "AudioCapture.java"

# interfaces
.implements Lcom/android/camera/Clapper$ClapperListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/AudioCapture$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/camera/AudioCapture$Callback;

.field private mClapper:Lcom/android/camera/Clapper;

.field private mIsRunning:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/AudioCapture$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/camera/AudioCapture$Callback;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/AudioCapture;->mIsRunning:Z

    .line 21
    invoke-static {p1}, Lcom/android/camera/Util;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iput-object p1, p0, Lcom/android/camera/AudioCapture;->mCallback:Lcom/android/camera/AudioCapture$Callback;

    .line 20
    return-void
.end method


# virtual methods
.method public heard(F)V
    .locals 2
    .param p1, "progress"    # F

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/camera/AudioCapture;->mCallback:Lcom/android/camera/AudioCapture$Callback;

    if-eqz v0, :cond_0

    .line 59
    iget-boolean v0, p0, Lcom/android/camera/AudioCapture;->mIsRunning:Z

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/android/camera/AudioCapture;->mCallback:Lcom/android/camera/AudioCapture$Callback;

    invoke-interface {v0}, Lcom/android/camera/AudioCapture$Callback;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6ShutterButton;->setAudioProgress(F)V

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/android/camera/AudioCapture;->mCallback:Lcom/android/camera/AudioCapture$Callback;

    invoke-interface {v0}, Lcom/android/camera/AudioCapture$Callback;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ShutterButton;->setAudioProgress(F)V

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/camera/AudioCapture;->mIsRunning:Z

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/camera/AudioCapture;->mIsRunning:Z

    if-nez v0, :cond_0

    .line 43
    return-void

    .line 45
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/AudioCapture;->mIsRunning:Z

    .line 46
    iget-object v0, p0, Lcom/android/camera/AudioCapture;->mClapper:Lcom/android/camera/Clapper;

    invoke-virtual {v0}, Lcom/android/camera/Clapper;->stop()V

    .line 41
    return-void
.end method

.method public releaseShutter()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/camera/AudioCapture;->mCallback:Lcom/android/camera/AudioCapture$Callback;

    invoke-interface {v0}, Lcom/android/camera/AudioCapture$Callback;->readyToAudioCapture()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/AudioCapture;->mIsRunning:Z

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/camera/AudioCapture;->mCallback:Lcom/android/camera/AudioCapture$Callback;

    invoke-interface {v0}, Lcom/android/camera/AudioCapture$Callback;->releaseShutter()V

    .line 68
    :cond_0
    return-void
.end method

.method public start()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 26
    iget-boolean v0, p0, Lcom/android/camera/AudioCapture;->mIsRunning:Z

    if-eqz v0, :cond_0

    .line 27
    return v1

    .line 30
    :cond_0
    new-instance v0, Lcom/android/camera/Clapper;

    invoke-direct {v0, p0}, Lcom/android/camera/Clapper;-><init>(Lcom/android/camera/Clapper$ClapperListener;)V

    iput-object v0, p0, Lcom/android/camera/AudioCapture;->mClapper:Lcom/android/camera/Clapper;

    .line 31
    iget-object v0, p0, Lcom/android/camera/AudioCapture;->mClapper:Lcom/android/camera/Clapper;

    invoke-virtual {v0}, Lcom/android/camera/Clapper;->start()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    iput-boolean v1, p0, Lcom/android/camera/AudioCapture;->mIsRunning:Z

    .line 35
    return v1

    .line 38
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
