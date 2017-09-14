.class public Lcom/android/camera/ui/V6VideoCaptureButton;
.super Lcom/android/camera/ui/V6BottomAnimationImageView;
.source "V6VideoCaptureButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/ui/V6FunctionUI;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6BottomAnimationImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    return-void
.end method


# virtual methods
.method public enableControls(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/V6VideoCaptureButton;->setEnabled(Z)V

    .line 42
    return-void
.end method

.method public onCameraOpen()V
    .locals 1

    .prologue
    .line 38
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6VideoCaptureButton;->setVisibility(I)V

    .line 37
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 48
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoCaptureButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoCaptureButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 50
    const/4 v1, 0x0

    .line 51
    const v2, 0x7f090016

    .line 52
    const/4 v3, 0x2

    move-object v5, v4

    .line 49
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 22
    invoke-super {p0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->onFinishInflate()V

    .line 23
    invoke-virtual {p0, p0}, Lcom/android/camera/ui/V6VideoCaptureButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 28
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoCaptureButton;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isVideoCaptureIntent()Z

    move-result v0

    .line 28
    if-nez v0, :cond_0

    .line 30
    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoCaptureVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    :goto_0
    invoke-super {p0, p1}, Lcom/android/camera/ui/V6BottomAnimationImageView;->setVisibility(I)V

    .line 27
    return-void

    .line 31
    :cond_0
    const/16 p1, 0x8

    goto :goto_0
.end method
