.class public Lcom/android/camera/ui/GridSettingExpandedTextPopup;
.super Lcom/android/camera/ui/GridSettingPopup;
.source "GridSettingExpandedTextPopup.java"


# instance fields
.field private mLeftMargin:I

.field private mRightMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/GridSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->mIgnoreSameItemClick:Z

    .line 19
    return-void
.end method

.method private initAnimation(Z)Landroid/view/animation/Animation;
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 116
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->getAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v0

    .line 118
    .local v0, "animation":Landroid/view/animation/Animation;
    new-instance v1, Lcom/android/camera/ui/SimpleAnimationListener;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/ui/SimpleAnimationListener;-><init>(Landroid/view/View;Z)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 119
    return-object v0
.end method


# virtual methods
.method public dismiss(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 106
    if-eqz p1, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->clearAnimation()V

    .line 108
    invoke-direct {p0, v1}, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->initAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 112
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->notifyPopupVisibleChange(Z)V

    .line 105
    return-void

    .line 110
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->setVisibility(I)V

    goto :goto_0
.end method

.method public getAnimation(Z)Landroid/view/animation/Animation;
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 58
    iget v0, p0, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->mLeftMargin:I

    if-eqz v0, :cond_1

    .line 59
    iget-object v1, p0, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    const v0, 0x7f050007

    :goto_0
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    :cond_0
    const v0, 0x7f050010

    goto :goto_0

    .line 61
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_2

    const v0, 0x7f050006

    :goto_1
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    :cond_2
    const v0, 0x7f050011

    goto :goto_1
.end method

.method protected getItemResId()I
    .locals 1

    .prologue
    .line 51
    const v0, 0x7f040009

    return v0
.end method

.method protected initGridViewLayoutParam(I)V
    .locals 5
    .param p1, "itemNum"    # I

    .prologue
    const/4 v4, -0x1

    .line 78
    invoke-virtual {p0}, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08002a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 79
    .local v0, "gridItemWidth":I
    iget-object v2, p0, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 80
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    mul-int v2, p1, v0

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 81
    iget v2, p0, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->mLeftMargin:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 82
    iget v2, p0, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->mRightMargin:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 84
    const-string/jumbo v2, "pref_camera_hdr_key"

    iget-object v3, p0, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 85
    const-string/jumbo v2, "pref_camera_face_beauty_switch_key"

    iget-object v3, p0, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 84
    if-eqz v2, :cond_1

    .line 86
    :cond_0
    const/16 v2, 0xb

    invoke-virtual {v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 91
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    return-void

    .line 88
    :cond_1
    const/16 v2, 0x9

    invoke-virtual {v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0
.end method

.method public initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V
    .locals 3
    .param p1, "preferenceGroup"    # Lcom/android/camera/preferences/PreferenceGroup;
    .param p2, "preference"    # Lcom/android/camera/preferences/IconListPreference;
    .param p3, "p"    # Lcom/android/camera/ui/MessageDispacher;

    .prologue
    const/4 v2, 0x0

    .line 32
    iput-boolean v2, p0, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->mHasImage:Z

    .line 33
    iput-boolean v2, p0, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->mIgnoreSameItemClick:Z

    .line 36
    const-string/jumbo v0, "pref_camera_flashmode_key"

    invoke-virtual {p2}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/FlashButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FlashButton;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->mLeftMargin:I

    .line 38
    iput v2, p0, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->mRightMargin:I

    .line 47
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/ui/GridSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V

    .line 31
    return-void

    .line 39
    :cond_1
    const-string/jumbo v0, "pref_camera_hdr_key"

    invoke-virtual {p2}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 40
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getHdrButton()Lcom/android/camera/ui/HdrButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/HdrButton;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->mRightMargin:I

    .line 41
    iput v2, p0, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->mLeftMargin:I

    goto :goto_0

    .line 42
    :cond_2
    const-string/jumbo v0, "pref_camera_face_beauty_switch_key"

    invoke-virtual {p2}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSkinBeautyButton()Lcom/android/camera/ui/SkinBeautyButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/SkinBeautyButton;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->mRightMargin:I

    .line 44
    iput v2, p0, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->mLeftMargin:I

    goto :goto_0
.end method

.method protected notifyToDispatcher(Z)V
    .locals 6
    .param p1, "sameItem"    # Z

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 72
    iget-object v1, p0, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 73
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 69
    const/4 v1, 0x6

    .line 70
    const/4 v2, 0x0

    .line 71
    const/4 v3, 0x3

    .line 68
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 26
    invoke-super {p0}, Lcom/android/camera/ui/GridSettingPopup;->onFinishInflate()V

    .line 27
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->mGridViewHeight:I

    .line 25
    return-void
.end method

.method public show(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    const/4 v1, 0x1

    .line 96
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->setVisibility(I)V

    .line 97
    if-eqz p1, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->clearAnimation()V

    .line 99
    invoke-direct {p0, v1}, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->initAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 101
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->notifyPopupVisibleChange(Z)V

    .line 95
    return-void
.end method

.method public updateBackground()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method protected updateItemView(ILandroid/view/View;)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "item"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 123
    const v1, 0x7f090031

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 124
    .local v0, "tv":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 125
    iget v1, p0, Lcom/android/camera/ui/GridSettingExpandedTextPopup;->mCurrentIndex:I

    if-ne v1, p1, :cond_1

    .line 126
    const/4 v1, 0x0

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    const/high16 v1, 0x40800000    # 4.0f

    const/high16 v2, -0x40000000    # -2.0f

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_0
.end method
