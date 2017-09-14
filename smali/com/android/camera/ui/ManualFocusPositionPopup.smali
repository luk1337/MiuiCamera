.class public Lcom/android/camera/ui/ManualFocusPositionPopup;
.super Lcom/android/camera/ui/V6AbstractSettingPopup;
.source "ManualFocusPositionPopup.java"

# interfaces
.implements Lcom/android/camera/ui/HorizontalSlideView$OnItemSelectListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/ManualFocusPositionPopup$HorizontalSlideViewAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sTextActivatedColorState:[I

.field private static final sTextDefaultColorState:[I


# instance fields
.field private mCurrentIndex:I

.field private mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

.field private mLineColorDefault:I

.field private mLineHalfHeight:F

.field private mLineLineGap:I

.field private mLineTextGap:I

.field private mLineWidth:I

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextSize:I


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/ManualFocusPositionPopup;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mLineColorDefault:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/camera/ui/ManualFocusPositionPopup;)F
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mLineHalfHeight:F

    return v0
.end method

.method static synthetic -get2(Lcom/android/camera/ui/ManualFocusPositionPopup;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mLineLineGap:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/camera/ui/ManualFocusPositionPopup;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mLineTextGap:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/camera/ui/ManualFocusPositionPopup;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mLineWidth:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/camera/ui/ManualFocusPositionPopup;)Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/camera/ui/ManualFocusPositionPopup;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mTextSize:I

    return v0
.end method

.method static synthetic -get7()[I
    .locals 1

    sget-object v0, Lcom/android/camera/ui/ManualFocusPositionPopup;->sTextActivatedColorState:[I

    return-object v0
.end method

.method static synthetic -get8()[I
    .locals 1

    sget-object v0, Lcom/android/camera/ui/ManualFocusPositionPopup;->sTextDefaultColorState:[I

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    const-class v0, Lcom/android/camera/ui/ManualFocusPositionPopup;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/ManualFocusPositionPopup;->TAG:Ljava/lang/String;

    .line 41
    new-array v0, v3, [I

    const v1, 0x10102fe

    aput v1, v0, v2

    sput-object v0, Lcom/android/camera/ui/ManualFocusPositionPopup;->sTextActivatedColorState:[I

    .line 42
    new-array v0, v3, [I

    aput v2, v0, v2

    sput-object v0, Lcom/android/camera/ui/ManualFocusPositionPopup;->sTextDefaultColorState:[I

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mCurrentIndex:I

    .line 50
    const v3, 0x1010095

    const v4, 0x1010098

    filled-new-array {v3, v4}, [I

    move-result-object v2

    .line 51
    .local v2, "textAttrs":[I
    const v3, 0x7f0f001f

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 52
    .local v1, "style":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    iget v4, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mTextSize:I

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mTextSize:I

    .line 53
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mTextColor:Landroid/content/res/ColorStateList;

    .line 54
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 57
    .local v0, "resources":Landroid/content/res/Resources;
    const v3, 0x7f080023

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mLineHalfHeight:F

    .line 58
    const v3, 0x7f080024

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mLineWidth:I

    .line 59
    const v3, 0x7f080025

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mLineLineGap:I

    .line 60
    const v3, 0x7f080026

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mLineTextGap:I

    .line 61
    const v3, 0x7f0c000d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mLineColorDefault:I

    .line 47
    return-void
.end method

.method private getDisplayedFocusValue(I)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 80
    if-nez p1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0065

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 83
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private mapFocusToIndex(I)I
    .locals 2
    .param p1, "focusPosition"    # I

    .prologue
    .line 102
    const/4 v0, 0x0

    const/16 v1, 0x3e8

    invoke-static {p1, v0, v1}, Lcom/android/camera/Util;->clamp(III)I

    move-result p1

    .line 104
    div-int/lit8 v0, p1, 0xa

    rsub-int/lit8 v0, v0, 0x64

    return v0
.end method

.method private mapIndexToFocus(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 108
    mul-int/lit16 v0, p1, 0x3e8

    div-int/lit8 v0, v0, 0x64

    rsub-int v0, v0, 0x3e8

    return v0
.end method


# virtual methods
.method public initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V
    .locals 4
    .param p1, "preferenceGroup"    # Lcom/android/camera/preferences/PreferenceGroup;
    .param p2, "preference"    # Lcom/android/camera/preferences/IconListPreference;
    .param p3, "p"    # Lcom/android/camera/ui/MessageDispacher;

    .prologue
    .line 66
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/ui/V6AbstractSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V

    .line 67
    const/16 v3, 0xb

    new-array v0, v3, [Ljava/lang/CharSequence;

    .line 69
    .local v0, "entries":[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v3, 0xa

    if-gt v1, v3, :cond_0

    .line 70
    mul-int/lit8 v3, v1, 0xa

    invoke-direct {p0, v3}, Lcom/android/camera/ui/ManualFocusPositionPopup;->getDisplayedFocusValue(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    :cond_0
    new-instance v2, Lcom/android/camera/ui/ManualFocusPositionPopup$HorizontalSlideViewAdapter;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/ui/ManualFocusPositionPopup$HorizontalSlideViewAdapter;-><init>(Lcom/android/camera/ui/ManualFocusPositionPopup;[Ljava/lang/CharSequence;)V

    .line 74
    .local v2, "slideViewAdapter":Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;
    iget-object v3, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

    invoke-virtual {v3, v2}, Lcom/android/camera/ui/HorizontalSlideView;->setDrawAdapter(Lcom/android/camera/ui/HorizontalSlideView$HorizontalDrawAdapter;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/camera/ui/ManualFocusPositionPopup;->reloadPreference()V

    .line 65
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->onFinishInflate()V

    .line 90
    const v0, 0x7f09003c

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ManualFocusPositionPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/HorizontalSlideView;

    iput-object v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

    .line 91
    iget-object v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/HorizontalSlideView;->setOnItemSelectListener(Lcom/android/camera/ui/HorizontalSlideView$OnItemSelectListener;)V

    .line 88
    return-void
.end method

.method public onItemSelect(Lcom/android/camera/ui/HorizontalSlideView;I)V
    .locals 7
    .param p1, "view"    # Lcom/android/camera/ui/HorizontalSlideView;
    .param p2, "position"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 116
    invoke-direct {p0, p2}, Lcom/android/camera/ui/ManualFocusPositionPopup;->mapIndexToFocus(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setFocusPosition(I)V

    .line 117
    iget v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mCurrentIndex:I

    if-eq p2, v0, :cond_4

    .line 118
    iget v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mCurrentIndex:I

    if-eqz v0, :cond_0

    if-nez p2, :cond_5

    :cond_0
    const/4 v6, 0x1

    .line 119
    .local v6, "switchMode":Z
    :goto_0
    iput p2, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mCurrentIndex:I

    .line 120
    invoke-static {v6}, Lcom/android/camera/CameraSettings;->setFocusModeSwitching(Z)V

    .line 121
    iget v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mCurrentIndex:I

    if-nez v0, :cond_6

    .line 122
    const-string/jumbo v0, "continuous-picture"

    .line 121
    :goto_1
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setFocusMode(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/android/camera/ui/ManualFocusPositionPopup;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/camera/ActivityBase;->playCameraSound(I)V

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_2

    .line 129
    iget-object v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 133
    if-eqz v6, :cond_7

    const-string/jumbo v4, "pref_camera_focus_mode_key"

    .line 130
    :goto_2
    const/4 v1, 0x7

    move v3, v2

    .line 129
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 137
    :cond_2
    if-eqz v6, :cond_3

    .line 138
    iget-object v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPeakButton()Lcom/android/camera/ui/PeakButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/PeakButton;->updateVisible()V

    .line 140
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 115
    .end local v6    # "switchMode":Z
    :cond_4
    return-void

    .line 118
    :cond_5
    const/4 v6, 0x0

    .restart local v6    # "switchMode":Z
    goto :goto_0

    .line 122
    :cond_6
    const-string/jumbo v0, "manual"

    goto :goto_1

    .line 133
    :cond_7
    const-string/jumbo v4, "pref_focus_position_key"

    goto :goto_2
.end method

.method public reloadPreference()V
    .locals 3

    .prologue
    .line 96
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusPosition()I

    move-result v0

    .line 97
    .local v0, "focusPosition":I
    invoke-direct {p0, v0}, Lcom/android/camera/ui/ManualFocusPositionPopup;->mapFocusToIndex(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mCurrentIndex:I

    .line 98
    iget-object v1, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

    iget v2, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mCurrentIndex:I

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/HorizontalSlideView;->setSelection(I)V

    .line 95
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 145
    invoke-super {p0, p1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setEnabled(Z)V

    .line 146
    iget-object v0, p0, Lcom/android/camera/ui/ManualFocusPositionPopup;->mHorizontalSlideView:Lcom/android/camera/ui/HorizontalSlideView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/HorizontalSlideView;->setEnabled(Z)V

    .line 144
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 112
    return-void
.end method
