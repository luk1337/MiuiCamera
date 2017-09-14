.class public Lcom/android/camera/ui/GridSettingTextPopup;
.super Lcom/android/camera/ui/GridSettingPopup;
.source "GridSettingTextPopup.java"


# instance fields
.field private mSavedGridViewWidth:I

.field private mSavedPopupWidth:I

.field private mSplitLineDrawer:Lcom/android/camera/ui/SplitLineDrawer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/GridSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method private initializeSplitLine()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 76
    invoke-virtual {p0}, Lcom/android/camera/ui/GridSettingTextPopup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 77
    .local v2, "w":I
    invoke-virtual {p0}, Lcom/android/camera/ui/GridSettingTextPopup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 78
    .local v0, "h":I
    if-ge v2, v0, :cond_0

    move v1, v2

    .line 79
    .local v1, "viewWidth":I
    :goto_0
    invoke-direct {p0, v1, v4, v4}, Lcom/android/camera/ui/GridSettingTextPopup;->setSplitLineParameters(IZZ)V

    .line 75
    return-void

    .end local v1    # "viewWidth":I
    :cond_0
    move v1, v0

    .line 78
    goto :goto_0
.end method

.method private setGridViewParameters(I)I
    .locals 3
    .param p1, "width"    # I

    .prologue
    .line 93
    iget-object v2, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 94
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 95
    .local v0, "oldWidth":I
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 96
    iget-object v2, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    return v0
.end method

.method private setGridViewSoundEffects(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 101
    iget-object v2, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mGridView:Landroid/widget/GridView;

    if-eqz v2, :cond_0

    .line 102
    iget-object v2, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .line 103
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 104
    iget-object v2, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100
    .end local v0    # "childCount":I
    .end local v1    # "index":I
    :cond_0
    return-void
.end method

.method private setSplitLineParameters(IZZ)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "topBorderVisible"    # Z
    .param p3, "bottomBorderVisible"    # Z

    .prologue
    .line 83
    iget-object v1, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mSplitLineDrawer:Lcom/android/camera/ui/SplitLineDrawer;

    invoke-virtual {v1}, Lcom/android/camera/ui/SplitLineDrawer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 84
    .local v0, "layout":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 85
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 86
    iget-object v1, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mSplitLineDrawer:Lcom/android/camera/ui/SplitLineDrawer;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/SplitLineDrawer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    iget-object v1, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mSplitLineDrawer:Lcom/android/camera/ui/SplitLineDrawer;

    iget v2, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mDisplayColumnNum:I

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/android/camera/ui/SplitLineDrawer;->initialize(II)V

    .line 88
    iget-object v1, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mSplitLineDrawer:Lcom/android/camera/ui/SplitLineDrawer;

    invoke-virtual {v1, p2, p3}, Lcom/android/camera/ui/SplitLineDrawer;->setBorderVisible(ZZ)V

    .line 89
    iget-object v1, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mSplitLineDrawer:Lcom/android/camera/ui/SplitLineDrawer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/SplitLineDrawer;->setVisibility(I)V

    .line 82
    return-void
.end method


# virtual methods
.method protected getItemResId()I
    .locals 1

    .prologue
    .line 144
    const v0, 0x7f04000e

    return v0
.end method

.method public initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V
    .locals 3
    .param p1, "preferenceGroup"    # Lcom/android/camera/preferences/PreferenceGroup;
    .param p2, "preference"    # Lcom/android/camera/preferences/IconListPreference;
    .param p3, "p"    # Lcom/android/camera/ui/MessageDispacher;

    .prologue
    const/4 v2, 0x0

    .line 32
    iput-boolean v2, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mHasImage:Z

    .line 33
    const-string/jumbo v0, "pref_audio_focus_mode_key"

    invoke-virtual {p2}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    const-string/jumbo v0, "pref_audio_focus_key"

    invoke-virtual {p1, v0}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object p2

    .end local p2    # "preference":Lcom/android/camera/preferences/IconListPreference;
    check-cast p2, Lcom/android/camera/preferences/IconListPreference;

    .line 40
    .restart local p2    # "preference":Lcom/android/camera/preferences/IconListPreference;
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/ui/GridSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V

    .line 42
    invoke-direct {p0}, Lcom/android/camera/ui/GridSettingTextPopup;->initializeSplitLine()V

    .line 31
    return-void

    .line 35
    :cond_0
    const-string/jumbo v0, "pref_camera_tilt_shift_mode"

    invoke-virtual {p2}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    const-string/jumbo v0, "pref_camera_tilt_shift_key"

    invoke-virtual {p1, v0}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object p2

    .end local p2    # "preference":Lcom/android/camera/preferences/IconListPreference;
    check-cast p2, Lcom/android/camera/preferences/IconListPreference;

    .restart local p2    # "preference":Lcom/android/camera/preferences/IconListPreference;
    goto :goto_0

    .line 38
    :cond_1
    iput-boolean v2, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mIgnoreSameItemClick:Z

    goto :goto_0
.end method

.method protected notifyToDispatcher(Z)V
    .locals 6
    .param p1, "sameItem"    # Z

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 138
    iget-object v1, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 139
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 135
    const/4 v1, 0x6

    .line 136
    const/4 v2, 0x0

    .line 137
    const/4 v3, 0x3

    .line 134
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 131
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 25
    invoke-super {p0}, Lcom/android/camera/ui/GridSettingPopup;->onFinishInflate()V

    .line 26
    const v0, 0x7f0c0038

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/GridSettingTextPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/SplitLineDrawer;

    iput-object v0, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mSplitLineDrawer:Lcom/android/camera/ui/SplitLineDrawer;

    .line 27
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mGridViewHeight:I

    .line 24
    return-void
.end method

.method public restoreFromShrink()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-virtual {p0}, Lcom/android/camera/ui/GridSettingTextPopup;->updateBackground()V

    .line 59
    iget v1, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mSavedPopupWidth:I

    if-eqz v1, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/android/camera/ui/GridSettingTextPopup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 61
    .local v0, "selfParams":Landroid/view/ViewGroup$LayoutParams;
    iget v1, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mSavedPopupWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 62
    iput v2, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mSavedPopupWidth:I

    .line 63
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/GridSettingTextPopup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    .end local v0    # "selfParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v1, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mSavedGridViewWidth:I

    if-eqz v1, :cond_1

    .line 67
    iget v1, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mSavedGridViewWidth:I

    invoke-direct {p0, v1}, Lcom/android/camera/ui/GridSettingTextPopup;->setGridViewParameters(I)I

    .line 68
    iput v2, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mSavedGridViewWidth:I

    .line 70
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/camera/ui/GridSettingTextPopup;->setGridViewSoundEffects(Z)V

    .line 72
    invoke-direct {p0}, Lcom/android/camera/ui/GridSettingTextPopup;->initializeSplitLine()V

    .line 57
    return-void
.end method

.method public shrink(I)V
    .locals 3
    .param p1, "width"    # I

    .prologue
    const/4 v2, 0x0

    .line 46
    const v1, 0x7f020016

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/GridSettingTextPopup;->setBackgroundResource(I)V

    .line 47
    invoke-virtual {p0}, Lcom/android/camera/ui/GridSettingTextPopup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 48
    .local v0, "selfParams":Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mSavedPopupWidth:I

    .line 49
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 50
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/GridSettingTextPopup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    invoke-direct {p0, p1}, Lcom/android/camera/ui/GridSettingTextPopup;->setGridViewParameters(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mSavedGridViewWidth:I

    .line 53
    invoke-direct {p0, v2}, Lcom/android/camera/ui/GridSettingTextPopup;->setGridViewSoundEffects(Z)V

    .line 54
    invoke-direct {p0, p1, v2, v2}, Lcom/android/camera/ui/GridSettingTextPopup;->setSplitLineParameters(IZZ)V

    .line 45
    return-void
.end method

.method protected updateItemView(ILandroid/view/View;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "item"    # Landroid/view/View;

    .prologue
    .line 111
    invoke-super {p0, p1, p2}, Lcom/android/camera/ui/GridSettingPopup;->updateItemView(ILandroid/view/View;)V

    .line 112
    if-eqz p2, :cond_0

    .line 114
    const v1, 0x7f0c002f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 115
    .local v0, "tv":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mContext:Landroid/content/Context;

    const v2, 0x7f10001f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 118
    iget-object v1, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mDisableKeys:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    if-ge p1, v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mDisableKeys:Ljava/util/List;

    iget-object v2, p0, Lcom/android/camera/ui/GridSettingTextPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 110
    .end local v0    # "tv":Landroid/widget/TextView;
    :cond_0
    :goto_0
    return-void

    .line 125
    .restart local v0    # "tv":Landroid/widget/TextView;
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method
