.class public Lcom/android/camera/ui/UIController;
.super Lcom/android/camera/ui/V6ModuleUI;
.source "UIController.java"

# interfaces
.implements Lcom/android/camera/ui/MessageDispacher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/UIController$1;
    }
.end annotation


# instance fields
.field public mBottomControlPanel:Lcom/android/camera/ui/BottomControlPanel;

.field public mDebugInfoView:Landroid/widget/TextView;

.field public mEdgeShutterView:Lcom/android/camera/ui/V6EdgeShutterView;

.field public mGLView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

.field private mHibernateHintView:Landroid/widget/TextView;

.field private mLastMutexView:Lcom/android/camera/ui/MutexView;

.field private mMainContent:Landroid/view/View;

.field private mMutexRecover:Ljava/lang/Runnable;

.field private mPortraitUseHintView:Landroid/view/View;

.field private mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

.field public mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

.field public mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

.field public mSettingPage:Lcom/android/camera/ui/V6SettingPage;

.field public mSettingsStatusBar:Lcom/android/camera/ui/V6SettingsStatusBar;

.field public mSmartShutterButton:Lcom/android/camera/ui/V6SmartShutterButton;

.field public mSurfaceViewParent:Lcom/android/camera/ui/V6SurfaceViewFrame;

.field public mTopControlPanel:Lcom/android/camera/ui/TopControlPanel;


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/UIController;)Lcom/android/camera/ui/MutexView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mLastMutexView:Lcom/android/camera/ui/MutexView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/camera/ui/UIController;Lcom/android/camera/ui/MutexView;)Lcom/android/camera/ui/MutexView;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/UIController;->mLastMutexView:Lcom/android/camera/ui/MutexView;

    return-object p1
.end method

.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 1
    .param p1, "activity"    # Lcom/android/camera/Camera;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6ModuleUI;-><init>(Lcom/android/camera/Camera;)V

    .line 189
    new-instance v0, Lcom/android/camera/ui/UIController$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/UIController$1;-><init>(Lcom/android/camera/ui/UIController;)V

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mMutexRecover:Ljava/lang/Runnable;

    .line 40
    return-void
.end method

.method private hideModeSetting()V
    .locals 1

    .prologue
    .line 508
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->enableControls(Z)V

    .line 509
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getModeButton()Lcom/android/camera/ui/ModeButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ModeButton;->updateRemind()V

    .line 510
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSettingPage:Lcom/android/camera/ui/V6SettingPage;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingPage;->dismiss()V

    .line 507
    return-void
.end method

.method private onDismissModeSetting()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 518
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->setBlurFlag(Z)V

    .line 519
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isPanoramaModule()Z

    move-result v0

    if-nez v0, :cond_0

    .line 520
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getBottomControlUpperPanel()Lcom/android/camera/ui/BottomControlUpperPanel;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/BottomControlUpperPanel;->animateIn(Ljava/lang/Runnable;)V

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mBottomControlPanel:Lcom/android/camera/ui/BottomControlPanel;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/BottomControlPanel;->animateIn(Ljava/lang/Runnable;)V

    .line 523
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mTopControlPanel:Lcom/android/camera/ui/TopControlPanel;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/TopControlPanel;->animateIn(Ljava/lang/Runnable;)V

    .line 524
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/V6PreviewPage;->switchWithAnimation(Z)V

    .line 525
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6PreviewPanel;->setVisibility(I)V

    .line 526
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSettingsStatusBar:Lcom/android/camera/ui/V6SettingsStatusBar;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6SettingsStatusBar;->setVisibility(I)V

    .line 528
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/UIController;->enableControls(Z)V

    .line 531
    const v2, 0x7f0c000b

    const/4 v3, 0x2

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/UIController;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 517
    return-void
.end method

.method private onMutexViewHide(I)V
    .locals 4
    .param p1, "sender"    # I

    .prologue
    .line 176
    sparse-switch p1, :sswitch_data_0

    .line 175
    :goto_0
    return-void

    .line 180
    :sswitch_0
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v1, p0, Lcom/android/camera/ui/UIController;->mMutexRecover:Ljava/lang/Runnable;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/ui/V6PreviewPage;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 183
    :sswitch_1
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6PreviewPage;->updateOrientationLayout(Z)V

    .line 184
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getPortraitButton()Lcom/android/camera/ui/PortraitButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/PortraitButton;->show()V

    goto :goto_0

    .line 176
    :sswitch_data_0
    .sparse-switch
        0x7f0c0060 -> :sswitch_0
        0x7f0c0061 -> :sswitch_0
        0x7f0c0062 -> :sswitch_0
        0x7f0c0092 -> :sswitch_1
    .end sparse-switch
.end method

.method private onMutexViewShow(I)V
    .locals 3
    .param p1, "sender"    # I

    .prologue
    const/4 v2, 0x1

    .line 154
    sparse-switch p1, :sswitch_data_0

    .line 171
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v1, p0, Lcom/android/camera/ui/UIController;->mMutexRecover:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6PreviewPage;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 172
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/V6PreviewPage;->updateOrientationLayout(Z)V

    .line 153
    return-void

    .line 158
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->isSubViewShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mLastMutexView:Lcom/android/camera/ui/MutexView;

    .line 160
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mLastMutexView:Lcom/android/camera/ui/MutexView;

    invoke-interface {v0}, Lcom/android/camera/ui/MutexView;->hide()V

    .line 164
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getPortraitButton()Lcom/android/camera/ui/PortraitButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/PortraitButton;->hide()V

    goto :goto_0

    .line 162
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mLastMutexView:Lcom/android/camera/ui/MutexView;

    goto :goto_1

    .line 167
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getTopPopupParent()Lcom/android/camera/ui/TopPopupParent;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/TopPopupParent;->dismissAllPopup(Z)V

    .line 168
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getPortraitButton()Lcom/android/camera/ui/PortraitButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/PortraitButton;->hide()V

    goto :goto_0

    .line 154
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c0060 -> :sswitch_0
        0x7f0c0061 -> :sswitch_0
        0x7f0c0062 -> :sswitch_0
        0x7f0c0092 -> :sswitch_1
    .end sparse-switch
.end method

.method private onShowModeSetting()V
    .locals 1

    .prologue
    .line 514
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->enableControls(Z)V

    .line 513
    return-void
.end method

.method private showModeSetting()V
    .locals 6

    .prologue
    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 486
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mActivity:Lcom/android/camera/Camera;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/camera/Camera;->setBlurFlag(Z)V

    .line 487
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6PreviewPage;->switchWithAnimation(Z)V

    .line 488
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mTopControlPanel:Lcom/android/camera/ui/TopControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/TopControlPanel;->onShowModeSettings()V

    .line 489
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mBottomControlPanel:Lcom/android/camera/ui/BottomControlPanel;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/BottomControlPanel;->animateOut(Ljava/lang/Runnable;)V

    .line 490
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mTopControlPanel:Lcom/android/camera/ui/TopControlPanel;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/TopControlPanel;->animateOut(Ljava/lang/Runnable;)V

    .line 492
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewFrame;->isFullScreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mGLView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->setVisibility(I)V

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mEdgeShutterView:Lcom/android/camera/ui/V6EdgeShutterView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/V6EdgeShutterView;->setVisibility(I)V

    .line 496
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/V6PreviewPanel;->setVisibility(I)V

    .line 497
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSettingsStatusBar:Lcom/android/camera/ui/V6SettingsStatusBar;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/V6SettingsStatusBar;->setVisibility(I)V

    .line 498
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingPage;->show()V

    .line 500
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/UIController;->enableControls(Z)V

    .line 503
    const v2, 0x7f0c001c

    const/4 v3, 0x2

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/UIController;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 504
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v1, p0, Lcom/android/camera/ui/UIController;->mMutexRecover:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6PreviewPage;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 485
    return-void
.end method


# virtual methods
.method public dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "what"    # I
    .param p2, "sender"    # I
    .param p3, "receiver"    # I
    .param p4, "extra1"    # Ljava/lang/Object;
    .param p5, "extra2"    # Ljava/lang/Object;

    .prologue
    .line 205
    packed-switch p3, :pswitch_data_0

    .line 215
    const/4 v0, 0x0

    return v0

    .line 207
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    invoke-interface {v0, p1, p2, p4, p5}, Lcom/android/camera/module/Module;->handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 210
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, p1, p2, p4, p5}, Lcom/android/camera/Camera;->handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 213
    :pswitch_2
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/android/camera/ui/UIController;->handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 205
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getAsdIndicator()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mAsdIndicatorView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getBottomControlLowerGroup()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mBottomControlPanel:Lcom/android/camera/ui/BottomControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/BottomControlPanel;->getLowerGroup()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getBottomControlLowerPanel()Lcom/android/camera/ui/BottomControlLowerPanel;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mBottomControlPanel:Lcom/android/camera/ui/BottomControlPanel;

    iget-object v0, v0, Lcom/android/camera/ui/BottomControlPanel;->mLowerPanel:Lcom/android/camera/ui/BottomControlLowerPanel;

    return-object v0
.end method

.method public getBottomControlPanel()Lcom/android/camera/ui/BottomControlPanel;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mBottomControlPanel:Lcom/android/camera/ui/BottomControlPanel;

    return-object v0
.end method

.method public getBottomControlUpperPanel()Lcom/android/camera/ui/BottomControlUpperPanel;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mBottomControlPanel:Lcom/android/camera/ui/BottomControlPanel;

    iget-object v0, v0, Lcom/android/camera/ui/BottomControlPanel;->mUpperPanel:Lcom/android/camera/ui/BottomControlUpperPanel;

    return-object v0
.end method

.method public getCaptureProgressBar()Landroid/view/View;
    .locals 1

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getBottomControlLowerPanel()Lcom/android/camera/ui/BottomControlLowerPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/BottomControlLowerPanel;->getProgressBar()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getEdgeShutterView()Lcom/android/camera/ui/V6EdgeShutterView;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mEdgeShutterView:Lcom/android/camera/ui/V6EdgeShutterView;

    return-object v0
.end method

.method public getEffectButton()Lcom/android/camera/ui/EffectButton;
    .locals 1

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getBottomControlUpperPanel()Lcom/android/camera/ui/BottomControlUpperPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/BottomControlUpperPanel;->getEffectButton()Lcom/android/camera/ui/EffectButton;

    move-result-object v0

    return-object v0
.end method

.method public getEffectCropView()Lcom/android/camera/ui/V6EffectCropView;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mCropView:Lcom/android/camera/ui/V6EffectCropView;

    return-object v0
.end method

.method public getFaceView()Lcom/android/camera/ui/FaceView;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mFaceView:Lcom/android/camera/ui/FaceView;

    return-object v0
.end method

.method public getFlashButton()Lcom/android/camera/ui/FlashButton;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mTopControlPanel:Lcom/android/camera/ui/TopControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/TopControlPanel;->getFlashButton()Lcom/android/camera/ui/FlashButton;

    move-result-object v0

    return-object v0
.end method

.method public getFocusView()Lcom/android/camera/ui/FocusView;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mFocusView:Lcom/android/camera/ui/FocusView;

    return-object v0
.end method

.method public getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mGLView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    return-object v0
.end method

.method public getHdrButton()Lcom/android/camera/ui/HdrButton;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mTopControlPanel:Lcom/android/camera/ui/TopControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/TopControlPanel;->getHdrButton()Lcom/android/camera/ui/HdrButton;

    move-result-object v0

    return-object v0
.end method

.method public getHibernateHintView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mHibernateHintView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getModeButton()Lcom/android/camera/ui/ModeButton;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mBottomControlPanel:Lcom/android/camera/ui/BottomControlPanel;

    iget-object v0, v0, Lcom/android/camera/ui/BottomControlPanel;->mUpperPanel:Lcom/android/camera/ui/BottomControlUpperPanel;

    iget-object v0, v0, Lcom/android/camera/ui/BottomControlUpperPanel;->mModeButton:Lcom/android/camera/ui/ModeButton;

    return-object v0
.end method

.method public getModeExitView()Lcom/android/camera/ui/V6ModeExitView;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    return-object v0
.end method

.method public getModulePicker()Lcom/android/camera/ui/V6ModulePicker;
    .locals 1

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getBottomControlLowerPanel()Lcom/android/camera/ui/BottomControlLowerPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/BottomControlLowerPanel;->getModulePicker()Lcom/android/camera/ui/V6ModulePicker;

    move-result-object v0

    return-object v0
.end method

.method public getMultiSnapNum()Lcom/android/camera/ui/RotateTextView;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mMultiSnapNum:Lcom/android/camera/ui/RotateTextView;

    return-object v0
.end method

.method public getObjectView()Lcom/android/camera/ui/ObjectView;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mObjectView:Lcom/android/camera/ui/ObjectView;

    return-object v0
.end method

.method public getOrientationIndicator()Lcom/android/camera/ui/OrientationIndicator;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mLyingOriFlag:Lcom/android/camera/ui/OrientationIndicator;

    return-object v0
.end method

.method public getPanoramaViewRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mPanoramaViewRoot:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getPauseRecordingButton()Lcom/android/camera/ui/V6PauseRecordingButton;
    .locals 1

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getBottomControlLowerPanel()Lcom/android/camera/ui/BottomControlLowerPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/BottomControlLowerPanel;->getVideoPauseButton()Lcom/android/camera/ui/V6PauseRecordingButton;

    move-result-object v0

    return-object v0
.end method

.method public getPeakButton()Lcom/android/camera/ui/PeakButton;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mTopControlPanel:Lcom/android/camera/ui/TopControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/TopControlPanel;->getPeakButton()Lcom/android/camera/ui/PeakButton;

    move-result-object v0

    return-object v0
.end method

.method public getPopupIndicatorLayout()Landroid/view/View;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicatorLayout:Landroid/view/View;

    return-object v0
.end method

.method public getPopupParent()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getPopupParentLayout()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParentLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getPortraitButton()Lcom/android/camera/ui/PortraitButton;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mPortraitButton:Lcom/android/camera/ui/PortraitButton;

    return-object v0
.end method

.method public getPortraitHintTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mPortraitHintTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPortraitUseHintView()Landroid/view/View;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPortraitUseHintView:Landroid/view/View;

    return-object v0
.end method

.method public getPreferenceGroup()Lcom/android/camera/preferences/PreferenceGroup;
    .locals 1

    .prologue
    .line 477
    monitor-enter p0

    .line 478
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    if-nez v0, :cond_0

    .line 479
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->updatePreferenceGroup()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 482
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    return-object v0

    .line 477
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    return-object v0
.end method

.method public getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    return-object v0
.end method

.method public getPreviewPanel()Lcom/android/camera/ui/V6PreviewPanel;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    return-object v0
.end method

.method public getReviewCanceledView()Lcom/android/camera/ui/V6BottomAnimationImageView;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mBottomControlPanel:Lcom/android/camera/ui/BottomControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/BottomControlPanel;->getReviewCanceledView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v0

    return-object v0
.end method

.method public getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mBottomControlPanel:Lcom/android/camera/ui/BottomControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/BottomControlPanel;->getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v0

    return-object v0
.end method

.method public getReviewImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getReviewPlayView()Lcom/android/camera/ui/RotateImageView;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewPlay:Lcom/android/camera/ui/RotateImageView;

    return-object v0
.end method

.method public getSettingButton()Lcom/android/camera/ui/V6SettingButton;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSettingPage:Lcom/android/camera/ui/V6SettingPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6SettingPage;->mSettingButton:Lcom/android/camera/ui/V6SettingButton;

    return-object v0
.end method

.method public getSettingPage()Lcom/android/camera/ui/V6SettingPage;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSettingPage:Lcom/android/camera/ui/V6SettingPage;

    return-object v0
.end method

.method public getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSettingsStatusBar:Lcom/android/camera/ui/V6SettingsStatusBar;

    return-object v0
.end method

.method public getShutterButton()Lcom/android/camera/ui/V6ShutterButton;
    .locals 1

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getBottomControlLowerPanel()Lcom/android/camera/ui/BottomControlLowerPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/BottomControlLowerPanel;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    return-object v0
.end method

.method public getSkinBeautyButton()Lcom/android/camera/ui/SkinBeautyButton;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mTopControlPanel:Lcom/android/camera/ui/TopControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/TopControlPanel;->getSkinBeautyButton()Lcom/android/camera/ui/SkinBeautyButton;

    move-result-object v0

    return-object v0
.end method

.method public getSmartShutterButton()Lcom/android/camera/ui/V6SmartShutterButton;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSmartShutterButton:Lcom/android/camera/ui/V6SmartShutterButton;

    return-object v0
.end method

.method public getStereoButton()Lcom/android/camera/ui/StereoButton;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mStereoButton:Lcom/android/camera/ui/StereoButton;

    return-object v0
.end method

.method public getSurfaceViewFrame()Lcom/android/camera/ui/V6SurfaceViewFrame;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSurfaceViewParent:Lcom/android/camera/ui/V6SurfaceViewFrame;

    return-object v0
.end method

.method public getThumbnailButton()Lcom/android/camera/ui/V6ThumbnailButton;
    .locals 1

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getBottomControlLowerPanel()Lcom/android/camera/ui/BottomControlLowerPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/BottomControlLowerPanel;->getThumbnailButton()Lcom/android/camera/ui/V6ThumbnailButton;

    move-result-object v0

    return-object v0
.end method

.method public getTopControlPanel()Lcom/android/camera/ui/TopControlPanel;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mTopControlPanel:Lcom/android/camera/ui/TopControlPanel;

    return-object v0
.end method

.method public getTopPopupParent()Lcom/android/camera/ui/TopPopupParent;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mTopPopupParent:Lcom/android/camera/ui/TopPopupParent;

    return-object v0
.end method

.method public getVideoCaptureButton()Lcom/android/camera/ui/V6VideoCaptureButton;
    .locals 1

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getBottomControlLowerPanel()Lcom/android/camera/ui/BottomControlLowerPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/BottomControlLowerPanel;->getVideoCaptureButton()Lcom/android/camera/ui/V6VideoCaptureButton;

    move-result-object v0

    return-object v0
.end method

.method public getVideoRecordingTimeView()Lcom/android/camera/ui/V6RecordingTimeView;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoRecordingTimeView:Lcom/android/camera/ui/V6RecordingTimeView;

    return-object v0
.end method

.method public getWarningMessageParent()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mWarningMessageLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getWarningMessageView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mWarningView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getZoomButton()Lcom/android/camera/ui/ZoomButton;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mZoomButton:Lcom/android/camera/ui/ZoomButton;

    return-object v0
.end method

.method public handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "what"    # I
    .param p2, "sender"    # I
    .param p3, "extra1"    # Ljava/lang/Object;
    .param p4, "extra2"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 114
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 115
    check-cast p3, Ljava/lang/Boolean;

    .end local p3    # "extra1":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-direct {p0, p2}, Lcom/android/camera/ui/UIController;->onMutexViewShow(I)V

    .line 150
    :goto_0
    return v2

    .line 118
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/camera/ui/UIController;->onMutexViewHide(I)V

    goto :goto_0

    .line 121
    .restart local p3    # "extra1":Ljava/lang/Object;
    :cond_1
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 123
    :sswitch_0
    invoke-direct {p0}, Lcom/android/camera/ui/UIController;->onShowModeSetting()V

    .line 124
    return v1

    .line 127
    :sswitch_1
    invoke-direct {p0}, Lcom/android/camera/ui/UIController;->onDismissModeSetting()V

    .line 128
    return v1

    .line 131
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getModeExitView()Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ModeExitView;->updateBackground()V

    .line 132
    return v1

    .line 135
    :sswitch_3
    invoke-direct {p0}, Lcom/android/camera/ui/UIController;->showModeSetting()V

    .line 136
    return v1

    .line 139
    :sswitch_4
    invoke-direct {p0}, Lcom/android/camera/ui/UIController;->hideModeSetting()V

    .line 140
    return v1

    .line 143
    :sswitch_5
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 144
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getEffectCropView()Lcom/android/camera/ui/V6EffectCropView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectCropView;->removeTiltShiftMask()V

    .line 145
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/camera/module/Module;->handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 147
    :cond_2
    return v2

    .line 121
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c000a -> :sswitch_0
        0x7f0c000b -> :sswitch_1
        0x7f0c001c -> :sswitch_3
        0x7f0c0081 -> :sswitch_2
        0x7f0c0085 -> :sswitch_5
        0x7f0c0091 -> :sswitch_4
    .end sparse-switch
.end method

.method public onBack()Z
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSettingPage:Lcom/android/camera/ui/V6SettingPage;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingPage;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 536
    const/4 v0, 0x0

    return v0

    .line 538
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/UIController;->hideModeSetting()V

    .line 539
    const/4 v0, 0x1

    return v0
.end method

.method public onCameraOpen()V
    .locals 1

    .prologue
    .line 93
    invoke-super {p0}, Lcom/android/camera/ui/V6ModuleUI;->onCameraOpen()V

    .line 94
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPage;->updatePopupIndicator()V

    .line 92
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 46
    const v0, 0x7f0c0016

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/BottomControlPanel;

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mBottomControlPanel:Lcom/android/camera/ui/BottomControlPanel;

    .line 47
    const v0, 0x7f0c005f

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/TopControlPanel;

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mTopControlPanel:Lcom/android/camera/ui/TopControlPanel;

    .line 48
    const v0, 0x7f0c008b

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6SettingPage;

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mSettingPage:Lcom/android/camera/ui/V6SettingPage;

    .line 49
    const v0, 0x7f0c0073

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6PreviewPage;

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    .line 50
    const v0, 0x7f0c007b

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6PreviewPanel;

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    .line 51
    const v0, 0x7f0c009a

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6SmartShutterButton;

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mSmartShutterButton:Lcom/android/camera/ui/V6SmartShutterButton;

    .line 52
    const v0, 0x7f0c0092

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6SettingsStatusBar;

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mSettingsStatusBar:Lcom/android/camera/ui/V6SettingsStatusBar;

    .line 53
    const v0, 0x7f0c006b

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6CameraGLSurfaceView;

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mGLView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    .line 54
    const v0, 0x7f0c006d

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6SurfaceViewFrame;

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mSurfaceViewParent:Lcom/android/camera/ui/V6SurfaceViewFrame;

    .line 55
    const v0, 0x7f0c009b

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6EdgeShutterView;

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mEdgeShutterView:Lcom/android/camera/ui/V6EdgeShutterView;

    .line 56
    const v0, 0x7f0c006f

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mDebugInfoView:Landroid/widget/TextView;

    .line 57
    const v0, 0x7f0c006e

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mMainContent:Landroid/view/View;

    .line 58
    const v0, 0x7f0c0072

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mHibernateHintView:Landroid/widget/TextView;

    .line 59
    const v0, 0x7f0c0070

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mPortraitUseHintView:Landroid/view/View;

    .line 60
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mGLView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->setVisibility(I)V

    .line 61
    invoke-virtual {p0, p0}, Lcom/android/camera/ui/UIController;->setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->updatePreferenceGroup()V

    .line 65
    invoke-super {p0}, Lcom/android/camera/ui/V6ModuleUI;->onCreate()V

    .line 67
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Util;->checkDeviceHasNavigationBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mMainContent:Landroid/view/View;

    new-instance v1, Lcom/android/camera/ui/UIController$2;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/UIController$2;-><init>(Lcom/android/camera/ui/UIController;)V

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 45
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 99
    invoke-super {p0}, Lcom/android/camera/ui/V6ModuleUI;->onPause()V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mLastMutexView:Lcom/android/camera/ui/MutexView;

    .line 98
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 105
    invoke-super {p0}, Lcom/android/camera/ui/V6ModuleUI;->onResume()V

    .line 106
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/EffectController;->setBlurEffect(Z)V

    .line 107
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getHibernateHintView()Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    return-void
.end method

.method public showDebugInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mDebugInfoView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mDebugInfoView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    :cond_0
    return-void
.end method

.method public showDebugView()V
    .locals 2

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mDebugInfoView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mDebugInfoView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 445
    :cond_0
    return-void
.end method

.method public updatePreferenceGroup()V
    .locals 2

    .prologue
    .line 219
    new-instance v0, Lcom/android/camera/preferences/PreferenceInflater;

    iget-object v1, p0, Lcom/android/camera/ui/UIController;->mActivity:Lcom/android/camera/Camera;

    invoke-direct {v0, v1}, Lcom/android/camera/preferences/PreferenceInflater;-><init>(Landroid/content/Context;)V

    .line 220
    .local v0, "inflater":Lcom/android/camera/preferences/PreferenceInflater;
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    const v1, 0x7f06000a

    .line 220
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/PreferenceInflater;->inflate(I)Lcom/android/camera/preferences/CameraPreference;

    move-result-object v1

    check-cast v1, Lcom/android/camera/preferences/PreferenceGroup;

    iput-object v1, p0, Lcom/android/camera/ui/UIController;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    .line 218
    return-void

    .line 222
    :cond_0
    const v1, 0x7f060001

    goto :goto_0
.end method

.method public updateThumbnailView(Lcom/android/camera/Thumbnail;)V
    .locals 1
    .param p1, "t"    # Lcom/android/camera/Thumbnail;

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getBottomControlLowerPanel()Lcom/android/camera/ui/BottomControlLowerPanel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/BottomControlLowerPanel;->updateThumbnailView(Lcom/android/camera/Thumbnail;)V

    .line 246
    return-void
.end method

.method public useProperView()V
    .locals 2

    .prologue
    .line 438
    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getSurfaceViewFrame()Lcom/android/camera/ui/V6SurfaceViewFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SurfaceViewFrame;->initSurfaceView()V

    .line 436
    :goto_0
    return-void

    .line 439
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->setVisibility(I)V

    goto :goto_0
.end method
