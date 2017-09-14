.class public Lcom/android/camera/ui/V6PreviewPanel;
.super Lcom/android/camera/ui/V6RelativeLayout;
.source "V6PreviewPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public mCaptureDelayNumber:Lcom/android/camera/ui/RotateTextView;

.field public mCaptureDelayNumberParent:Landroid/widget/RelativeLayout;

.field public mCropView:Lcom/android/camera/ui/V6EffectCropView;

.field public mFaceView:Lcom/android/camera/ui/FaceView;

.field public mFocusView:Lcom/android/camera/ui/FocusView;

.field private mIsDelayNumInCenter:Z

.field private mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

.field public mMultiSnapNum:Lcom/android/camera/ui/RotateTextView;

.field public mObjectView:Lcom/android/camera/ui/ObjectView;

.field public mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

.field public mReviewImage:Landroid/widget/ImageView;

.field public mVideoRecordingTimeView:Lcom/android/camera/ui/V6RecordingTimeView;

.field public mVideoReviewImage:Landroid/widget/ImageView;

.field public mVideoReviewPlay:Lcom/android/camera/ui/RotateImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mIsDelayNumInCenter:Z

    .line 35
    return-void
.end method

.method private getLeftMarginAccordingDevice()I
    .locals 3

    .prologue
    .line 130
    sget v0, Lcom/android/camera/Util;->sWindowWidth:I

    int-to-float v0, v0

    .line 131
    const-string/jumbo v1, "camera_front_count_down_margin"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lmiui/util/FeatureParser;->getFloat(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 130
    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private isDelayNumberInCenter()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 155
    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    return v1

    .line 159
    :cond_0
    sget-boolean v3, Lcom/android/camera/Device;->IS_A8:Z

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-static {v0}, Lcom/android/camera/Util;->isActivityInvert(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    :goto_0
    if-ne v3, v0, :cond_2

    move v0, v1

    :goto_1
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method private updateCaptureDelayView(Z)V
    .locals 7
    .param p1, "isCenter"    # Z

    .prologue
    const/16 v6, 0xd

    const/16 v5, 0xa

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 110
    iget-boolean v2, p0, Lcom/android/camera/ui/V6PreviewPanel;->mIsDelayNumInCenter:Z

    if-ne v2, p1, :cond_0

    return-void

    .line 111
    :cond_0
    iput-boolean p1, p0, Lcom/android/camera/ui/V6PreviewPanel;->mIsDelayNumInCenter:Z

    .line 112
    iget-object v2, p0, Lcom/android/camera/ui/V6PreviewPanel;->mCaptureDelayNumberParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 113
    .local v0, "p1":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v1

    .line 114
    .local v1, "rules":[I
    iget-boolean v2, p0, Lcom/android/camera/ui/V6PreviewPanel;->mIsDelayNumInCenter:Z

    if-eqz v2, :cond_1

    .line 115
    aput v4, v1, v6

    .line 116
    aput v3, v1, v5

    .line 117
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 118
    iget-object v2, p0, Lcom/android/camera/ui/V6PreviewPanel;->mCaptureDelayNumber:Lcom/android/camera/ui/RotateTextView;

    const v3, 0x429f570a    # 79.67f

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/RotateTextView;->setTextSize(F)V

    .line 125
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ui/V6PreviewPanel;->mCaptureDelayNumberParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    iget-object v2, p0, Lcom/android/camera/ui/V6PreviewPanel;->mCaptureDelayNumber:Lcom/android/camera/ui/RotateTextView;

    invoke-virtual {v2}, Lcom/android/camera/ui/RotateTextView;->requestLayout()V

    .line 109
    return-void

    .line 120
    :cond_1
    aput v3, v1, v6

    .line 121
    aput v4, v1, v5

    .line 122
    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPanel;->getLeftMarginAccordingDevice()I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 123
    iget-object v2, p0, Lcom/android/camera/ui/V6PreviewPanel;->mCaptureDelayNumber:Lcom/android/camera/ui/RotateTextView;

    const/high16 v3, 0x42480000    # 50.0f

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/RotateTextView;->setTextSize(F)V

    goto :goto_0
.end method


# virtual methods
.method public hideDelayNumber()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mCaptureDelayNumber:Lcom/android/camera/ui/RotateTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateTextView;->setVisibility(I)V

    .line 150
    return-void
.end method

.method public onCameraOpen()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPanel;->isDelayNumberInCenter()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/V6PreviewPanel;->updateCaptureDelayView(Z)V

    .line 68
    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onCameraOpen()V

    .line 66
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 99
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-nez v0, :cond_0

    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewPlay:Lcom/android/camera/ui/RotateImageView;

    if-ne v0, p1, :cond_1

    .line 101
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 104
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 105
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 102
    const v2, 0x7f09008a

    .line 103
    const/4 v3, 0x2

    .line 101
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 98
    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 47
    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onFinishInflate()V

    .line 48
    const v0, 0x7f090086

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/FaceView;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mFaceView:Lcom/android/camera/ui/FaceView;

    .line 49
    const v0, 0x7f090087

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ObjectView;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mObjectView:Lcom/android/camera/ui/ObjectView;

    .line 50
    const v0, 0x7f090082

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateTextView;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mCaptureDelayNumber:Lcom/android/camera/ui/RotateTextView;

    .line 51
    const v0, 0x7f090081

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mCaptureDelayNumberParent:Landroid/widget/RelativeLayout;

    .line 52
    const v0, 0x7f090083

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateTextView;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mMultiSnapNum:Lcom/android/camera/ui/RotateTextView;

    .line 53
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mMultiSnapNum:Lcom/android/camera/ui/RotateTextView;

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPanel;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/camera/Util;->getMiuiTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 54
    const v0, 0x7f09008a

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewPlay:Lcom/android/camera/ui/RotateImageView;

    .line 55
    const v0, 0x7f090080

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6RecordingTimeView;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoRecordingTimeView:Lcom/android/camera/ui/V6RecordingTimeView;

    .line 56
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoRecordingTimeView:Lcom/android/camera/ui/V6RecordingTimeView;

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPanel;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/camera/Util;->getMiuiTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6RecordingTimeView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 57
    const v0, 0x7f090088

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/FocusView;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mFocusView:Lcom/android/camera/ui/FocusView;

    .line 58
    const v0, 0x7f090084

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6PreviewFrame;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    .line 59
    const v0, 0x7f09008b

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6EffectCropView;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mCropView:Lcom/android/camera/ui/V6EffectCropView;

    .line 60
    const v0, 0x7f090089

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewImage:Landroid/widget/ImageView;

    .line 61
    const v0, 0x7f09007f

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mReviewImage:Landroid/widget/ImageView;

    .line 62
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewImage:Landroid/widget/ImageView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 46
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onPause()V

    .line 74
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 75
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->clear()V

    .line 72
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 80
    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onResume()V

    .line 81
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ObjectView;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mMultiSnapNum:Lcom/android/camera/ui/RotateTextView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateTextView;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mCaptureDelayNumber:Lcom/android/camera/ui/RotateTextView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateTextView;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewPlay:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoRecordingTimeView:Lcom/android/camera/ui/V6RecordingTimeView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6RecordingTimeView;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isScanQRCodeIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPanel;->setVisibility(I)V

    .line 94
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewPlay:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    return-void

    .line 92
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPanel;->setVisibility(I)V

    goto :goto_0
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .locals 0
    .param p1, "p"    # Lcom/android/camera/ui/MessageDispacher;

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/android/camera/ui/V6RelativeLayout;->setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V

    .line 42
    iput-object p1, p0, Lcom/android/camera/ui/V6PreviewPanel;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 40
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 136
    invoke-super {p0, p1, p2}, Lcom/android/camera/ui/V6RelativeLayout;->setOrientation(IZ)V

    .line 137
    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPanel;->isDelayNumberInCenter()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/V6PreviewPanel;->updateCaptureDelayView(Z)V

    .line 135
    return-void
.end method

.method public showDelayNumber(Ljava/lang/String;)V
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 141
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mCaptureDelayNumberParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mCaptureDelayNumberParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mCaptureDelayNumber:Lcom/android/camera/ui/RotateTextView;

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mCaptureDelayNumber:Lcom/android/camera/ui/RotateTextView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateTextView;->setVisibility(I)V

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mCaptureDelayNumber:Lcom/android/camera/ui/RotateTextView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotateTextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    return-void
.end method
