.class public Lcom/android/camera/ui/UIController;
.super Lcom/android/camera/ui/V6ModuleUI;
.source "UIController.java"

# interfaces
.implements Lcom/android/camera/ui/MessageDispacher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/UIController$1;,
        Lcom/android/camera/ui/UIController$2;,
        Lcom/android/camera/ui/UIController$3;,
        Lcom/android/camera/ui/UIController$MonoDummyListener;
    }
.end annotation


# instance fields
.field private callback:Landroid/view/SurfaceHolder$Callback;

.field private callbackMono:Landroid/view/SurfaceHolder$Callback;

.field public mBottomControlPanel:Lcom/android/camera/ui/BottomControlPanel;

.field public mDebugInfoView:Landroid/widget/TextView;

.field public mEdgeShutterView:Lcom/android/camera/ui/V6EdgeShutterView;

.field private mFrontCameraHintView:Landroid/view/View;

.field public mGLView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

.field private mIsMonoDummyAllocationEverUsed:Z

.field private mLastMutexView:Lcom/android/camera/ui/MutexView;

.field private mMainContent:Landroid/view/View;

.field private mMonoDummyAllocation:Landroid/renderscript/Allocation;

.field private mMonoDummyOutputAllocation:Landroid/renderscript/Allocation;

.field private mMutexRecover:Ljava/lang/Runnable;

.field private mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

.field private mPreviewHeight:I

.field public mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

.field public mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

.field private mPreviewWidth:I

.field public mSettingPage:Lcom/android/camera/ui/V6SettingPage;

.field public mSettingsStatusBar:Lcom/android/camera/ui/V6SettingsStatusBar;

.field public mSmartShutterButton:Lcom/android/camera/ui/V6SmartShutterButton;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceHolderMono:Landroid/view/SurfaceHolder;

.field private mSurfaceMono:Landroid/view/Surface;

.field private mSurfaceView:Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;

.field private mSurfaceViewMono:Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;

.field public mSurfaceViewParent:Lcom/android/camera/ui/V6SurfaceViewFrame;

.field public mTopControlPanel:Lcom/android/camera/ui/TopControlPanel;


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/UIController;)Lcom/android/camera/ui/MutexView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mLastMutexView:Lcom/android/camera/ui/MutexView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/camera/ui/UIController;)Landroid/renderscript/Allocation;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mMonoDummyAllocation:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/camera/ui/UIController;)Landroid/renderscript/Allocation;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mMonoDummyOutputAllocation:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/camera/ui/UIController;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/UIController;->mPreviewHeight:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/camera/ui/UIController;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/UIController;->mPreviewWidth:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/camera/ui/UIController;)Landroid/view/SurfaceHolder;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSurfaceHolderMono:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/camera/ui/UIController;)Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSurfaceViewMono:Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/camera/ui/UIController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/UIController;->mIsMonoDummyAllocationEverUsed:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/camera/ui/UIController;Lcom/android/camera/ui/MutexView;)Lcom/android/camera/ui/MutexView;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/UIController;->mLastMutexView:Lcom/android/camera/ui/MutexView;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/camera/ui/UIController;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/UIController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/camera/ui/UIController;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/UIController;->mSurfaceHolderMono:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/camera/ui/UIController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/UIController;->previewUIDestroyed()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/camera/ui/UIController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/UIController;->previewUIReady()V

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 1
    .param p1, "activity"    # Lcom/android/camera/Camera;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6ModuleUI;-><init>(Lcom/android/camera/Camera;)V

    .line 211
    new-instance v0, Lcom/android/camera/ui/UIController$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/UIController$1;-><init>(Lcom/android/camera/ui/UIController;)V

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mMutexRecover:Ljava/lang/Runnable;

    .line 555
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/UIController;->mIsMonoDummyAllocationEverUsed:Z

    .line 709
    new-instance v0, Lcom/android/camera/ui/UIController$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/UIController$2;-><init>(Lcom/android/camera/ui/UIController;)V

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->callbackMono:Landroid/view/SurfaceHolder$Callback;

    .line 729
    new-instance v0, Lcom/android/camera/ui/UIController$3;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/UIController$3;-><init>(Lcom/android/camera/ui/UIController;)V

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->callback:Landroid/view/SurfaceHolder$Callback;

    .line 57
    return-void
.end method

.method private destroyMonoAllocation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 681
    const-string/jumbo v0, "UIController"

    const-string/jumbo v1, "destroyMonoAllocation>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mMonoDummyAllocation:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/UIController;->mIsMonoDummyAllocationEverUsed:Z

    if-eqz v0, :cond_0

    .line 683
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mMonoDummyAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->setOnBufferAvailableListener(Landroid/renderscript/Allocation$OnBufferAvailableListener;)V

    .line 684
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mMonoDummyAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 685
    iput-object v2, p0, Lcom/android/camera/ui/UIController;->mMonoDummyAllocation:Landroid/renderscript/Allocation;

    .line 687
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mMonoDummyOutputAllocation:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/ui/UIController;->mIsMonoDummyAllocationEverUsed:Z

    if-eqz v0, :cond_1

    .line 688
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mMonoDummyOutputAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 689
    iput-object v2, p0, Lcom/android/camera/ui/UIController;->mMonoDummyOutputAllocation:Landroid/renderscript/Allocation;

    .line 691
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSurfaceViewMono:Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;->setVisibility(I)V

    .line 692
    const-string/jumbo v0, "UIController"

    const-string/jumbo v1, "destroyMonoAllocation<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    return-void
.end method

.method private hideModeSetting()V
    .locals 1

    .prologue
    .line 518
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->enableControls(Z)V

    .line 519
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getModeButton()Lcom/android/camera/ui/ModeButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ModeButton;->updateRemind()V

    .line 520
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSettingPage:Lcom/android/camera/ui/V6SettingPage;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingPage;->dismiss()V

    .line 517
    return-void
.end method

.method private initSurfaces()V
    .locals 2

    .prologue
    .line 663
    const v0, 0x7f090074

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mSurfaceView:Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;

    .line 664
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSurfaceView:Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;

    invoke-virtual {v0}, Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 665
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/android/camera/ui/UIController;->callback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 666
    const v0, 0x7f090075

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mSurfaceViewMono:Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;

    .line 667
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSurfaceViewMono:Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;->setZOrderMediaOverlay(Z)V

    .line 668
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSurfaceViewMono:Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;

    invoke-virtual {v0}, Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mSurfaceHolderMono:Landroid/view/SurfaceHolder;

    .line 669
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSurfaceHolderMono:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/android/camera/ui/UIController;->callbackMono:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 671
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSurfaceViewMono:Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;

    if-eqz v0, :cond_0

    .line 672
    invoke-static {}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->isMonoPreviewOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 673
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSurfaceViewMono:Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;->setVisibility(I)V

    .line 662
    :cond_0
    :goto_0
    return-void

    .line 675
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSurfaceViewMono:Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;->setVisibility(I)V

    goto :goto_0
.end method

.method private onDismissModeSetting()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 528
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->setBlurFlag(Z)V

    .line 529
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isPanoramaModule()Z

    move-result v0

    if-nez v0, :cond_0

    .line 530
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getBottomControlUpperPanel()Lcom/android/camera/ui/BottomControlUpperPanel;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/BottomControlUpperPanel;->animateIn(Ljava/lang/Runnable;)V

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mBottomControlPanel:Lcom/android/camera/ui/BottomControlPanel;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/BottomControlPanel;->animateIn(Ljava/lang/Runnable;)V

    .line 533
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mTopControlPanel:Lcom/android/camera/ui/TopControlPanel;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/TopControlPanel;->animateIn(Ljava/lang/Runnable;)V

    .line 534
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/V6PreviewPage;->switchWithAnimation(Z)V

    .line 535
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6PreviewPanel;->setVisibility(I)V

    .line 536
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSettingsStatusBar:Lcom/android/camera/ui/V6SettingsStatusBar;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6SettingsStatusBar;->setVisibility(I)V

    .line 538
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/UIController;->enableControls(Z)V

    .line 541
    const v2, 0x7f09000c

    const/4 v3, 0x2

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/UIController;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 527
    return-void
.end method

.method private onMutexViewHide(I)V
    .locals 4
    .param p1, "sender"    # I

    .prologue
    .line 199
    sparse-switch p1, :sswitch_data_0

    .line 198
    :goto_0
    return-void

    .line 203
    :sswitch_0
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v1, p0, Lcom/android/camera/ui/UIController;->mMutexRecover:Ljava/lang/Runnable;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/ui/V6PreviewPage;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 206
    :sswitch_1
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6PreviewPage;->updateOrientationLayout(Z)V

    goto :goto_0

    .line 199
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090066 -> :sswitch_0
        0x7f090067 -> :sswitch_0
        0x7f090068 -> :sswitch_0
        0x7f090092 -> :sswitch_1
    .end sparse-switch
.end method

.method private onMutexViewShow(I)V
    .locals 3
    .param p1, "sender"    # I

    .prologue
    const/4 v2, 0x1

    .line 179
    sparse-switch p1, :sswitch_data_0

    .line 194
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v1, p0, Lcom/android/camera/ui/UIController;->mMutexRecover:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6PreviewPage;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 195
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/V6PreviewPage;->updateOrientationLayout(Z)V

    .line 178
    return-void

    .line 183
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->isSubViewShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mLastMutexView:Lcom/android/camera/ui/MutexView;

    .line 185
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mLastMutexView:Lcom/android/camera/ui/MutexView;

    invoke-interface {v0}, Lcom/android/camera/ui/MutexView;->hide()V

    goto :goto_0

    .line 187
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mLastMutexView:Lcom/android/camera/ui/MutexView;

    goto :goto_0

    .line 191
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getTopPopupParent()Lcom/android/camera/ui/TopPopupParent;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/TopPopupParent;->dismissAllPopup(Z)V

    goto :goto_0

    .line 179
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090066 -> :sswitch_0
        0x7f090067 -> :sswitch_0
        0x7f090068 -> :sswitch_0
        0x7f090092 -> :sswitch_1
    .end sparse-switch
.end method

.method private onShowModeSetting()V
    .locals 1

    .prologue
    .line 524
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->enableControls(Z)V

    .line 523
    return-void
.end method

.method private previewUIDestroyed()V
    .locals 1

    .prologue
    .line 706
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->onPreviewUIDestroyed()V

    .line 705
    return-void
.end method

.method private previewUIReady()V
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 697
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSurfaceViewMono:Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;

    invoke-virtual {v0}, Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSurfaceViewMono:Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;

    invoke-virtual {v0}, Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 699
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSurfaceHolderMono:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_1

    .line 700
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSurfaceHolderMono:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    .line 696
    if-eqz v0, :cond_1

    .line 701
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->onPreviewUIReady()V

    .line 695
    :cond_1
    return-void
.end method

.method private releaseMonoSurface()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 633
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSurfaceMono:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSurfaceMono:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 635
    iput-object v1, p0, Lcom/android/camera/ui/UIController;->mSurfaceMono:Landroid/view/Surface;

    .line 632
    :cond_0
    return-void
.end method

.method private showModeSetting()V
    .locals 6

    .prologue
    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 495
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mActivity:Lcom/android/camera/Camera;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/camera/Camera;->setBlurFlag(Z)V

    .line 496
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6PreviewPage;->switchWithAnimation(Z)V

    .line 497
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mTopControlPanel:Lcom/android/camera/ui/TopControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/TopControlPanel;->onShowModeSettings()V

    .line 498
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mBottomControlPanel:Lcom/android/camera/ui/BottomControlPanel;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/BottomControlPanel;->animateOut(Ljava/lang/Runnable;)V

    .line 499
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mTopControlPanel:Lcom/android/camera/ui/TopControlPanel;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/TopControlPanel;->animateOut(Ljava/lang/Runnable;)V

    .line 501
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewFrame;->isFullScreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 502
    sget-boolean v0, Lcom/android/camera/Device;->IS_B7:Z

    if-nez v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mGLView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->setVisibility(I)V

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mEdgeShutterView:Lcom/android/camera/ui/V6EdgeShutterView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/V6EdgeShutterView;->setVisibility(I)V

    .line 507
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/V6PreviewPanel;->setVisibility(I)V

    .line 508
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSettingsStatusBar:Lcom/android/camera/ui/V6SettingsStatusBar;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/V6SettingsStatusBar;->setVisibility(I)V

    .line 509
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingPage;->show()V

    .line 511
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/UIController;->enableControls(Z)V

    .line 514
    const v2, 0x7f09001d

    const/4 v3, 0x2

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/UIController;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 494
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
    .line 226
    packed-switch p3, :pswitch_data_0

    .line 236
    const/4 v0, 0x0

    return v0

    .line 228
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    invoke-interface {v0, p1, p2, p4, p5}, Lcom/android/camera/module/Module;->handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 231
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, p1, p2, p4, p5}, Lcom/android/camera/Camera;->handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 234
    :pswitch_2
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/android/camera/ui/UIController;->handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 226
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
    .line 342
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mAsdIndicatorView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getBottomControlLowerGroup()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mBottomControlPanel:Lcom/android/camera/ui/BottomControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/BottomControlPanel;->getLowerGroup()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getBottomControlLowerPanel()Lcom/android/camera/ui/BottomControlLowerPanel;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mBottomControlPanel:Lcom/android/camera/ui/BottomControlPanel;

    iget-object v0, v0, Lcom/android/camera/ui/BottomControlPanel;->mLowerPanel:Lcom/android/camera/ui/BottomControlLowerPanel;

    return-object v0
.end method

.method public getBottomControlPanel()Lcom/android/camera/ui/BottomControlPanel;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mBottomControlPanel:Lcom/android/camera/ui/BottomControlPanel;

    return-object v0
.end method

.method public getBottomControlUpperPanel()Lcom/android/camera/ui/BottomControlUpperPanel;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mBottomControlPanel:Lcom/android/camera/ui/BottomControlPanel;

    iget-object v0, v0, Lcom/android/camera/ui/BottomControlPanel;->mUpperPanel:Lcom/android/camera/ui/BottomControlUpperPanel;

    return-object v0
.end method

.method public getCaptureProgressBar()Landroid/view/View;
    .locals 1

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getBottomControlLowerPanel()Lcom/android/camera/ui/BottomControlLowerPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/BottomControlLowerPanel;->getProgressBar()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getEdgeShutterView()Lcom/android/camera/ui/V6EdgeShutterView;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mEdgeShutterView:Lcom/android/camera/ui/V6EdgeShutterView;

    return-object v0
.end method

.method public getEffectButton()Lcom/android/camera/ui/EffectButton;
    .locals 1

    .prologue
    .line 438
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getBottomControlUpperPanel()Lcom/android/camera/ui/BottomControlUpperPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/BottomControlUpperPanel;->getEffectButton()Lcom/android/camera/ui/EffectButton;

    move-result-object v0

    return-object v0
.end method

.method public getEffectCropView()Lcom/android/camera/ui/V6EffectCropView;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mCropView:Lcom/android/camera/ui/V6EffectCropView;

    return-object v0
.end method

.method public getFaceView()Lcom/android/camera/ui/FaceView;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mFaceView:Lcom/android/camera/ui/FaceView;

    return-object v0
.end method

.method public getFlashButton()Lcom/android/camera/ui/FlashButton;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mTopControlPanel:Lcom/android/camera/ui/TopControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/TopControlPanel;->getFlashButton()Lcom/android/camera/ui/FlashButton;

    move-result-object v0

    return-object v0
.end method

.method public getFocusView()Lcom/android/camera/ui/FocusView;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mFocusView:Lcom/android/camera/ui/FocusView;

    return-object v0
.end method

.method public getFrontCameraHintView()Landroid/view/View;
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mFrontCameraHintView:Landroid/view/View;

    return-object v0
.end method

.method public getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mGLView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    return-object v0
.end method

.method public getHdrButton()Lcom/android/camera/ui/HdrButton;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mTopControlPanel:Lcom/android/camera/ui/TopControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/TopControlPanel;->getHdrButton()Lcom/android/camera/ui/HdrButton;

    move-result-object v0

    return-object v0
.end method

.method public getModeButton()Lcom/android/camera/ui/ModeButton;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mBottomControlPanel:Lcom/android/camera/ui/BottomControlPanel;

    iget-object v0, v0, Lcom/android/camera/ui/BottomControlPanel;->mUpperPanel:Lcom/android/camera/ui/BottomControlUpperPanel;

    iget-object v0, v0, Lcom/android/camera/ui/BottomControlUpperPanel;->mModeButton:Lcom/android/camera/ui/ModeButton;

    return-object v0
.end method

.method public getModeExitView()Lcom/android/camera/ui/V6ModeExitView;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    return-object v0
.end method

.method public getModulePicker()Lcom/android/camera/ui/V6ModulePicker;
    .locals 1

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getBottomControlLowerPanel()Lcom/android/camera/ui/BottomControlLowerPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/BottomControlLowerPanel;->getModulePicker()Lcom/android/camera/ui/V6ModulePicker;

    move-result-object v0

    return-object v0
.end method

.method public getMonoDummySurface()Landroid/view/Surface;
    .locals 6

    .prologue
    .line 571
    iget-object v4, p0, Lcom/android/camera/ui/UIController;->mMonoDummyAllocation:Landroid/renderscript/Allocation;

    if-nez v4, :cond_1

    .line 572
    iget-object v4, p0, Lcom/android/camera/ui/UIController;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v4}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v1

    .line 573
    .local v1, "rs":Landroid/renderscript/RenderScript;
    new-instance v3, Landroid/renderscript/Type$Builder;

    invoke-static {v1}, Landroid/renderscript/Element;->YUV(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 574
    .local v3, "yuvTypeBuilder":Landroid/renderscript/Type$Builder;
    iget v4, p0, Lcom/android/camera/ui/UIController;->mPreviewWidth:I

    invoke-virtual {v3, v4}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 575
    iget v4, p0, Lcom/android/camera/ui/UIController;->mPreviewHeight:I

    invoke-virtual {v3, v4}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    .line 576
    const/16 v4, 0x23

    invoke-virtual {v3, v4}, Landroid/renderscript/Type$Builder;->setYuvFormat(I)Landroid/renderscript/Type$Builder;

    .line 578
    invoke-virtual {v3}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v4

    .line 579
    const/16 v5, 0x21

    .line 578
    invoke-static {v1, v4, v5}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v4

    .line 577
    iput-object v4, p0, Lcom/android/camera/ui/UIController;->mMonoDummyAllocation:Landroid/renderscript/Allocation;

    .line 581
    invoke-static {v1}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    move-result-object v2

    .line 582
    .local v2, "yuvToRgbIntrinsic":Landroid/renderscript/ScriptIntrinsicYuvToRGB;
    iget-object v4, p0, Lcom/android/camera/ui/UIController;->mMonoDummyAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v2, v4}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->setInput(Landroid/renderscript/Allocation;)V

    .line 584
    invoke-static {}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->isMonoPreviewOn()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 585
    new-instance v0, Landroid/renderscript/Type$Builder;

    invoke-static {v1}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 586
    .local v0, "rgbTypeBuilder":Landroid/renderscript/Type$Builder;
    iget v4, p0, Lcom/android/camera/ui/UIController;->mPreviewWidth:I

    invoke-virtual {v0, v4}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 587
    iget v4, p0, Lcom/android/camera/ui/UIController;->mPreviewHeight:I

    invoke-virtual {v0, v4}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    .line 589
    invoke-virtual {v0}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v4

    .line 590
    const/16 v5, 0x41

    .line 589
    invoke-static {v1, v4, v5}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v4

    .line 588
    iput-object v4, p0, Lcom/android/camera/ui/UIController;->mMonoDummyOutputAllocation:Landroid/renderscript/Allocation;

    .line 591
    iget-object v4, p0, Lcom/android/camera/ui/UIController;->mMonoDummyOutputAllocation:Landroid/renderscript/Allocation;

    iget-object v5, p0, Lcom/android/camera/ui/UIController;->mSurfaceHolderMono:Landroid/view/SurfaceHolder;

    invoke-interface {v5}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/renderscript/Allocation;->setSurface(Landroid/view/Surface;)V

    .line 592
    iget-object v4, p0, Lcom/android/camera/ui/UIController;->mActivity:Lcom/android/camera/Camera;

    new-instance v5, Lcom/android/camera/ui/UIController$5;

    invoke-direct {v5, p0}, Lcom/android/camera/ui/UIController$5;-><init>(Lcom/android/camera/ui/UIController;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/Camera;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 599
    .end local v0    # "rgbTypeBuilder":Landroid/renderscript/Type$Builder;
    :cond_0
    iget-object v4, p0, Lcom/android/camera/ui/UIController;->mMonoDummyAllocation:Landroid/renderscript/Allocation;

    .line 600
    new-instance v5, Lcom/android/camera/ui/UIController$MonoDummyListener;

    invoke-direct {v5, p0, v2}, Lcom/android/camera/ui/UIController$MonoDummyListener;-><init>(Lcom/android/camera/ui/UIController;Landroid/renderscript/ScriptIntrinsicYuvToRGB;)V

    .line 599
    invoke-virtual {v4, v5}, Landroid/renderscript/Allocation;->setOnBufferAvailableListener(Landroid/renderscript/Allocation$OnBufferAvailableListener;)V

    .line 602
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/camera/ui/UIController;->mIsMonoDummyAllocationEverUsed:Z

    .line 604
    .end local v1    # "rs":Landroid/renderscript/RenderScript;
    .end local v2    # "yuvToRgbIntrinsic":Landroid/renderscript/ScriptIntrinsicYuvToRGB;
    .end local v3    # "yuvTypeBuilder":Landroid/renderscript/Type$Builder;
    :cond_1
    iget-object v4, p0, Lcom/android/camera/ui/UIController;->mMonoDummyAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v4}, Landroid/renderscript/Allocation;->getSurface()Landroid/view/Surface;

    move-result-object v4

    return-object v4
.end method

.method public getMultiSnapNum()Lcom/android/camera/ui/RotateTextView;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mMultiSnapNum:Lcom/android/camera/ui/RotateTextView;

    return-object v0
.end method

.method public getObjectView()Lcom/android/camera/ui/ObjectView;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mObjectView:Lcom/android/camera/ui/ObjectView;

    return-object v0
.end method

.method public getOrientationIndicator()Lcom/android/camera/ui/OrientationIndicator;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mLyingOriFlag:Lcom/android/camera/ui/OrientationIndicator;

    return-object v0
.end method

.method public getPanoramaViewRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mPanoramaViewRoot:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getPauseRecordingButton()Lcom/android/camera/ui/V6PauseRecordingButton;
    .locals 1

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getBottomControlLowerPanel()Lcom/android/camera/ui/BottomControlLowerPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/BottomControlLowerPanel;->getVideoPauseButton()Lcom/android/camera/ui/V6PauseRecordingButton;

    move-result-object v0

    return-object v0
.end method

.method public getPeakButton()Lcom/android/camera/ui/PeakButton;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mTopControlPanel:Lcom/android/camera/ui/TopControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/TopControlPanel;->getPeakButton()Lcom/android/camera/ui/PeakButton;

    move-result-object v0

    return-object v0
.end method

.method public getPopupParent()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getPopupParentLayout()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParentLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getPreferenceGroup()Lcom/android/camera/preferences/PreferenceGroup;
    .locals 1

    .prologue
    .line 486
    monitor-enter p0

    .line 487
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    if-nez v0, :cond_0

    .line 488
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->updatePreferenceGroup()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 491
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    return-object v0

    .line 486
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    return-object v0
.end method

.method public getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    return-object v0
.end method

.method public getPreviewPanel()Lcom/android/camera/ui/V6PreviewPanel;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    return-object v0
.end method

.method public getReviewCanceledView()Lcom/android/camera/ui/V6BottomAnimationImageView;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mBottomControlPanel:Lcom/android/camera/ui/BottomControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/BottomControlPanel;->getReviewCanceledView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v0

    return-object v0
.end method

.method public getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mBottomControlPanel:Lcom/android/camera/ui/BottomControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/BottomControlPanel;->getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v0

    return-object v0
.end method

.method public getReviewImage()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mReviewImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getReviewImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getReviewPlayView()Lcom/android/camera/ui/RotateImageView;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewPlay:Lcom/android/camera/ui/RotateImageView;

    return-object v0
.end method

.method public getSettingButton()Lcom/android/camera/ui/V6SettingButton;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSettingPage:Lcom/android/camera/ui/V6SettingPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6SettingPage;->mSettingButton:Lcom/android/camera/ui/V6SettingButton;

    return-object v0
.end method

.method public getSettingPage()Lcom/android/camera/ui/V6SettingPage;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSettingPage:Lcom/android/camera/ui/V6SettingPage;

    return-object v0
.end method

.method public getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSettingsStatusBar:Lcom/android/camera/ui/V6SettingsStatusBar;

    return-object v0
.end method

.method public getShutterButton()Lcom/android/camera/ui/V6ShutterButton;
    .locals 1

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getBottomControlLowerPanel()Lcom/android/camera/ui/BottomControlLowerPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/BottomControlLowerPanel;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    return-object v0
.end method

.method public getSkinBeautyButton()Lcom/android/camera/ui/SkinBeautyButton;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mTopControlPanel:Lcom/android/camera/ui/TopControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/TopControlPanel;->getSkinBeautyButton()Lcom/android/camera/ui/SkinBeautyButton;

    move-result-object v0

    return-object v0
.end method

.method public getSmartShutterButton()Lcom/android/camera/ui/V6SmartShutterButton;
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSmartShutterButton:Lcom/android/camera/ui/V6SmartShutterButton;

    return-object v0
.end method

.method public getStereoButton()Lcom/android/camera/ui/StereoButton;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mStereoButton:Lcom/android/camera/ui/StereoButton;

    return-object v0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public getSurfaceViewFrame()Lcom/android/camera/ui/V6SurfaceViewFrame;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSurfaceViewParent:Lcom/android/camera/ui/V6SurfaceViewFrame;

    return-object v0
.end method

.method public getSurfaceViewSize()Landroid/graphics/Point;
    .locals 3

    .prologue
    .line 655
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 656
    .local v0, "point":Landroid/graphics/Point;
    iget-object v1, p0, Lcom/android/camera/ui/UIController;->mSurfaceView:Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;

    if-eqz v1, :cond_0

    .line 657
    iget-object v1, p0, Lcom/android/camera/ui/UIController;->mSurfaceView:Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;

    invoke-virtual {v1}, Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/UIController;->mSurfaceView:Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;

    invoke-virtual {v2}, Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 659
    :cond_0
    return-object v0
.end method

.method public getThumbnailButton()Lcom/android/camera/ui/V6ThumbnailButton;
    .locals 1

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getBottomControlLowerPanel()Lcom/android/camera/ui/BottomControlLowerPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/BottomControlLowerPanel;->getThumbnailButton()Lcom/android/camera/ui/V6ThumbnailButton;

    move-result-object v0

    return-object v0
.end method

.method public getTopControlPanel()Lcom/android/camera/ui/TopControlPanel;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mTopControlPanel:Lcom/android/camera/ui/TopControlPanel;

    return-object v0
.end method

.method public getTopPopupParent()Lcom/android/camera/ui/TopPopupParent;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mTopPopupParent:Lcom/android/camera/ui/TopPopupParent;

    return-object v0
.end method

.method public getVideoCaptureButton()Lcom/android/camera/ui/V6VideoCaptureButton;
    .locals 1

    .prologue
    .line 446
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getBottomControlLowerPanel()Lcom/android/camera/ui/BottomControlLowerPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/BottomControlLowerPanel;->getVideoCaptureButton()Lcom/android/camera/ui/V6VideoCaptureButton;

    move-result-object v0

    return-object v0
.end method

.method public getVideoRecordingTimeView()Lcom/android/camera/ui/V6RecordingTimeView;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoRecordingTimeView:Lcom/android/camera/ui/V6RecordingTimeView;

    return-object v0
.end method

.method public getWarningMessageParent()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mWarningMessageLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getWarningMessageView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mWarningView:Landroid/widget/TextView;

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

    .line 139
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 140
    check-cast p3, Ljava/lang/Boolean;

    .end local p3    # "extra1":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-direct {p0, p2}, Lcom/android/camera/ui/UIController;->onMutexViewShow(I)V

    .line 175
    :goto_0
    return v2

    .line 143
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/camera/ui/UIController;->onMutexViewHide(I)V

    goto :goto_0

    .line 146
    .restart local p3    # "extra1":Ljava/lang/Object;
    :cond_1
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 148
    :sswitch_0
    invoke-direct {p0}, Lcom/android/camera/ui/UIController;->onShowModeSetting()V

    .line 149
    return v1

    .line 152
    :sswitch_1
    invoke-direct {p0}, Lcom/android/camera/ui/UIController;->onDismissModeSetting()V

    .line 153
    return v1

    .line 156
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getModeExitView()Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ModeExitView;->updateBackground()V

    .line 157
    return v1

    .line 160
    :sswitch_3
    invoke-direct {p0}, Lcom/android/camera/ui/UIController;->showModeSetting()V

    .line 161
    return v1

    .line 164
    :sswitch_4
    invoke-direct {p0}, Lcom/android/camera/ui/UIController;->hideModeSetting()V

    .line 165
    return v1

    .line 168
    :sswitch_5
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 169
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getEffectCropView()Lcom/android/camera/ui/V6EffectCropView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectCropView;->removeTiltShiftMask()V

    .line 170
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/camera/module/Module;->handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 172
    :cond_2
    return v2

    .line 146
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09000b -> :sswitch_0
        0x7f09000c -> :sswitch_1
        0x7f09001d -> :sswitch_3
        0x7f090084 -> :sswitch_2
        0x7f090088 -> :sswitch_5
        0x7f090091 -> :sswitch_4
    .end sparse-switch
.end method

.method public hideSurfaceView()V
    .locals 2

    .prologue
    .line 640
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSurfaceView:Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;->setVisibility(I)V

    .line 639
    return-void
.end method

.method public onBack()Z
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSettingPage:Lcom/android/camera/ui/V6SettingPage;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingPage;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 546
    const/4 v0, 0x0

    return v0

    .line 548
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/UIController;->hideModeSetting()V

    .line 549
    const/4 v0, 0x1

    return v0
.end method

.method public onCameraOpen()V
    .locals 1

    .prologue
    .line 113
    invoke-super {p0}, Lcom/android/camera/ui/V6ModuleUI;->onCameraOpen()V

    .line 114
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPage;->updatePopupIndicator()V

    .line 112
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 63
    const v0, 0x7f090017

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/BottomControlPanel;

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mBottomControlPanel:Lcom/android/camera/ui/BottomControlPanel;

    .line 64
    const v0, 0x7f090065

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/TopControlPanel;

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mTopControlPanel:Lcom/android/camera/ui/TopControlPanel;

    .line 65
    const v0, 0x7f09008e

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6SettingPage;

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mSettingPage:Lcom/android/camera/ui/V6SettingPage;

    .line 66
    const v0, 0x7f090078

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6PreviewPage;

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    .line 67
    const v0, 0x7f09007e

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6PreviewPanel;

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    .line 68
    const v0, 0x7f09009a

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6SmartShutterButton;

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mSmartShutterButton:Lcom/android/camera/ui/V6SmartShutterButton;

    .line 69
    const v0, 0x7f090092

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6SettingsStatusBar;

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mSettingsStatusBar:Lcom/android/camera/ui/V6SettingsStatusBar;

    .line 70
    const v0, 0x7f090071

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6CameraGLSurfaceView;

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mGLView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    .line 71
    const v0, 0x7f090073

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6SurfaceViewFrame;

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mSurfaceViewParent:Lcom/android/camera/ui/V6SurfaceViewFrame;

    .line 72
    const v0, 0x7f09009b

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6EdgeShutterView;

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mEdgeShutterView:Lcom/android/camera/ui/V6EdgeShutterView;

    .line 73
    const v0, 0x7f090077

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mDebugInfoView:Landroid/widget/TextView;

    .line 74
    const v0, 0x7f090076

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mMainContent:Landroid/view/View;

    .line 75
    const v0, 0x7f09002c

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mFrontCameraHintView:Landroid/view/View;

    .line 76
    invoke-virtual {p0, p0}, Lcom/android/camera/ui/UIController;->setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V

    .line 79
    invoke-direct {p0}, Lcom/android/camera/ui/UIController;->initSurfaces()V

    .line 84
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->updatePreferenceGroup()V

    .line 85
    invoke-super {p0}, Lcom/android/camera/ui/V6ModuleUI;->onCreate()V

    .line 87
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Util;->checkDeviceHasNavigationBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mMainContent:Landroid/view/View;

    new-instance v1, Lcom/android/camera/ui/UIController$4;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/UIController$4;-><init>(Lcom/android/camera/ui/UIController;)V

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 62
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 119
    invoke-super {p0}, Lcom/android/camera/ui/V6ModuleUI;->onPause()V

    .line 120
    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mLastMutexView:Lcom/android/camera/ui/MutexView;

    .line 123
    invoke-direct {p0}, Lcom/android/camera/ui/UIController;->destroyMonoAllocation()V

    .line 124
    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mMonoDummyAllocation:Landroid/renderscript/Allocation;

    .line 125
    invoke-direct {p0}, Lcom/android/camera/ui/UIController;->releaseMonoSurface()V

    .line 118
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 131
    invoke-super {p0}, Lcom/android/camera/ui/V6ModuleUI;->onResume()V

    .line 132
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/EffectController;->setBlurEffect(Z)V

    .line 130
    return-void
.end method

.method public setPreviewSize(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 648
    iput p1, p0, Lcom/android/camera/ui/UIController;->mPreviewWidth:I

    .line 649
    iput p2, p0, Lcom/android/camera/ui/UIController;->mPreviewHeight:I

    .line 650
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSurfaceView:Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;

    invoke-virtual {v0}, Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 651
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSurfaceView:Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;

    invoke-virtual {v0, p2, p1}, Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;->setAspectRatio(II)V

    .line 647
    return-void
.end method

.method public showDebugInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mDebugInfoView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mDebugInfoView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    :cond_0
    return-void
.end method

.method public showDebugView()V
    .locals 2

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mDebugInfoView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mDebugInfoView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 458
    :cond_0
    return-void
.end method

.method public showSurfaceView()V
    .locals 2

    .prologue
    .line 644
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSurfaceView:Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;->setVisibility(I)V

    .line 643
    return-void
.end method

.method public updatePreferenceGroup()V
    .locals 2

    .prologue
    .line 240
    new-instance v0, Lcom/android/camera/preferences/PreferenceInflater;

    iget-object v1, p0, Lcom/android/camera/ui/UIController;->mActivity:Lcom/android/camera/Camera;

    invoke-direct {v0, v1}, Lcom/android/camera/preferences/PreferenceInflater;-><init>(Landroid/content/Context;)V

    .line 241
    .local v0, "inflater":Lcom/android/camera/preferences/PreferenceInflater;
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    const v1, 0x7f06000a

    .line 241
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/PreferenceInflater;->inflate(I)Lcom/android/camera/preferences/CameraPreference;

    move-result-object v1

    check-cast v1, Lcom/android/camera/preferences/PreferenceGroup;

    iput-object v1, p0, Lcom/android/camera/ui/UIController;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    .line 239
    return-void

    .line 243
    :cond_0
    const v1, 0x7f060001

    goto :goto_0
.end method

.method public updateThumbnailView(Lcom/android/camera/Thumbnail;)V
    .locals 1
    .param p1, "t"    # Lcom/android/camera/Thumbnail;

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getBottomControlLowerPanel()Lcom/android/camera/ui/BottomControlLowerPanel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/BottomControlLowerPanel;->updateThumbnailView(Lcom/android/camera/Thumbnail;)V

    .line 267
    return-void
.end method

.method public useProperView()V
    .locals 2

    .prologue
    .line 451
    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getSurfaceViewFrame()Lcom/android/camera/ui/V6SurfaceViewFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SurfaceViewFrame;->initSurfaceView()V

    .line 449
    :goto_0
    return-void

    .line 452
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->setVisibility(I)V

    goto :goto_0
.end method
