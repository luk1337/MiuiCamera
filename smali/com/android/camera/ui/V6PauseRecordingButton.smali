.class public Lcom/android/camera/ui/V6PauseRecordingButton;
.super Lcom/android/camera/ui/V6BottomAnimationImageView;
.source "V6PauseRecordingButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/ui/V6FunctionUI;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6BottomAnimationImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    invoke-virtual {p0, p0}, Lcom/android/camera/ui/V6PauseRecordingButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 34
    iget-object v0, p0, Lcom/android/camera/ui/V6PauseRecordingButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/android/camera/ui/V6PauseRecordingButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 36
    const/4 v1, 0x0

    .line 37
    const v2, 0x7f090011

    .line 38
    const/4 v3, 0x2

    move-object v5, v4

    .line 35
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 19
    invoke-super {p0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->onResume()V

    .line 20
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PauseRecordingButton;->setVisibility(I)V

    .line 18
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 25
    if-nez p1, :cond_0

    .line 26
    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoPauseVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/camera/ui/V6BottomAnimationImageView;->setVisibility(I)V

    .line 24
    return-void

    .line 27
    :cond_1
    const/16 p1, 0x8

    goto :goto_0
.end method
