.class public Lcom/android/camera/ui/SettingScreenView;
.super Lcom/android/camera/ui/SettingView;
.source "SettingScreenView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private mColumnCount:I

.field private mDisabledIndicator:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFadeIn:Landroid/view/animation/Animation;

.field private mFadeOut:Landroid/view/animation/Animation;

.field private mKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mParent:Landroid/view/View;

.field private mParentPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

.field private mPopupRoot:Landroid/view/ViewGroup;

.field private mRowCount:I

.field private mScreenHeight:I

.field private mSettingScreen:Lcom/android/camera/ui/ScreenView;

.field protected mSplitLineDrawer:Lcom/android/camera/ui/SplitLineDrawer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/camera/ui/SettingView;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mDisabledIndicator:Ljava/util/Set;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/SettingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mDisabledIndicator:Ljava/util/Set;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/ui/SettingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mDisabledIndicator:Ljava/util/Set;

    .line 42
    return-void
.end method

.method private clearMessageDispatcher()V
    .locals 3

    .prologue
    .line 92
    iget-object v2, p0, Lcom/android/camera/ui/SettingScreenView;->mIndicators:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "indicator$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6AbstractIndicator;

    .line 93
    .local v0, "indicator":Lcom/android/camera/ui/V6AbstractIndicator;
    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractIndicator;->onDestroy()V

    goto :goto_0

    .line 91
    .end local v0    # "indicator":Lcom/android/camera/ui/V6AbstractIndicator;
    :cond_0
    return-void
.end method

.method private getActualColumnCount()I
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/SettingScreenView;->mColumnCount:I

    if-ge v0, v1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 113
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/SettingScreenView;->mColumnCount:I

    return v0
.end method

.method private initScreenView()V
    .locals 2

    .prologue
    .line 118
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/camera/ui/SettingScreenView;->mColumnCount:I

    .line 119
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/ui/SettingScreenView;->mRowCount:I

    .line 120
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingScreenView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/SettingScreenView;->mScreenHeight:I

    .line 117
    return-void
.end method

.method private initializeSplitLine()V
    .locals 7

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingScreenView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v3, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 98
    .local v3, "w":I
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingScreenView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 99
    .local v0, "h":I
    if-ge v3, v0, :cond_0

    move v2, v3

    .line 101
    .local v2, "viewWidth":I
    :goto_0
    iget-object v4, p0, Lcom/android/camera/ui/SettingScreenView;->mSplitLineDrawer:Lcom/android/camera/ui/SplitLineDrawer;

    invoke-virtual {v4}, Lcom/android/camera/ui/SplitLineDrawer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 102
    .local v1, "layout":Landroid/widget/RelativeLayout$LayoutParams;
    iget v4, p0, Lcom/android/camera/ui/SettingScreenView;->mScreenHeight:I

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 103
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 104
    iget-object v4, p0, Lcom/android/camera/ui/SettingScreenView;->mSplitLineDrawer:Lcom/android/camera/ui/SplitLineDrawer;

    invoke-virtual {v4, v1}, Lcom/android/camera/ui/SplitLineDrawer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    iget-object v4, p0, Lcom/android/camera/ui/SettingScreenView;->mSplitLineDrawer:Lcom/android/camera/ui/SplitLineDrawer;

    iget v5, p0, Lcom/android/camera/ui/SettingScreenView;->mRowCount:I

    invoke-direct {p0}, Lcom/android/camera/ui/SettingScreenView;->getActualColumnCount()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/ui/SplitLineDrawer;->initialize(II)V

    .line 106
    iget-object v4, p0, Lcom/android/camera/ui/SettingScreenView;->mSplitLineDrawer:Lcom/android/camera/ui/SplitLineDrawer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/SplitLineDrawer;->setVisibility(I)V

    .line 96
    return-void

    .line 99
    .end local v1    # "layout":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "viewWidth":I
    :cond_0
    move v2, v0

    .restart local v2    # "viewWidth":I
    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mParent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 201
    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mParent:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/ui/SettingScreenView;->mFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 202
    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mParent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 198
    :cond_0
    return-void
.end method

.method public getVisibility()I
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mParent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    return v0

    .line 215
    :cond_0
    const/16 v0, 0x8

    return v0
.end method

.method protected initIndicators(Ljava/util/List;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/SettingScreenView;->mColumnCount:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/ui/SettingScreenView;->mRowCount:I

    mul-int v20, v3, v4

    .line 125
    .local v20, "screenGridCount":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    div-int v3, v3, v20

    add-int/lit8 v19, v3, 0x1

    .line 126
    .local v19, "screenCount":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/SettingScreenView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 127
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ui/SettingScreenView;->mParent:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    .line 126
    sub-int/2addr v3, v4

    .line 127
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ui/SettingScreenView;->mParent:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    .line 126
    sub-int/2addr v3, v4

    .line 128
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/ui/SettingScreenView;->mPaddingLeft:I

    .line 126
    sub-int/2addr v3, v4

    .line 128
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/ui/SettingScreenView;->mPaddingRight:I

    .line 126
    sub-int v22, v3, v4

    .line 129
    .local v22, "w":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/SettingScreenView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v16, v0

    .line 130
    .local v16, "h":I
    move/from16 v0, v22

    move/from16 v1, v16

    if-ge v0, v1, :cond_1

    .end local v22    # "w":I
    :goto_0
    move/from16 v0, v22

    int-to-float v3, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/SettingScreenView;->getActualColumnCount()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v6, v3

    .line 131
    .local v6, "viewWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/SettingScreenView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 132
    const-string/jumbo v4, "layout_inflater"

    .line 131
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/LayoutInflater;

    .line 134
    .local v17, "inflater":Landroid/view/LayoutInflater;
    const/16 v21, 0x0

    .local v21, "screenIndex":I
    :goto_1
    move/from16 v0, v21

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    .line 135
    new-instance v2, Lcom/android/camera/ui/StaticGridView;

    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/SettingScreenView;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/ui/SettingScreenView;->mRowCount:I

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/SettingScreenView;->getActualColumnCount()I

    move-result v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/camera/ui/SettingScreenView;->mScreenHeight:I

    .line 135
    invoke-direct/range {v2 .. v7}, Lcom/android/camera/ui/StaticGridView;-><init>(Landroid/content/Context;IIII)V

    .line 138
    .local v2, "gridView":Lcom/android/camera/ui/StaticGridView;
    const/4 v15, 0x0

    .local v15, "gridIndex":I
    :goto_2
    move/from16 v0, v20

    if-ge v15, v0, :cond_0

    .line 139
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/SettingScreenView;->mRowCount:I

    mul-int v3, v3, v21

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/ui/SettingScreenView;->mColumnCount:I

    mul-int/2addr v3, v4

    add-int v18, v15, v3

    .line 140
    .local v18, "listIndex":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v18

    if-lt v0, v3, :cond_2

    .line 156
    .end local v18    # "listIndex":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/SettingScreenView;->mSettingScreen:Lcom/android/camera/ui/ScreenView;

    invoke-virtual {v3, v2}, Lcom/android/camera/ui/ScreenView;->addView(Landroid/view/View;)V

    .line 134
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .end local v2    # "gridView":Lcom/android/camera/ui/StaticGridView;
    .end local v6    # "viewWidth":I
    .end local v15    # "gridIndex":I
    .end local v17    # "inflater":Landroid/view/LayoutInflater;
    .end local v21    # "screenIndex":I
    .restart local v22    # "w":I
    :cond_1
    move/from16 v22, v16

    .line 130
    goto :goto_0

    .line 144
    .end local v22    # "w":I
    .restart local v2    # "gridView":Lcom/android/camera/ui/StaticGridView;
    .restart local v6    # "viewWidth":I
    .restart local v15    # "gridIndex":I
    .restart local v17    # "inflater":Landroid/view/LayoutInflater;
    .restart local v18    # "listIndex":I
    .restart local v21    # "screenIndex":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ui/SettingScreenView;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v8

    check-cast v8, Lcom/android/camera/preferences/IconListPreference;

    .line 145
    .local v8, "pref":Lcom/android/camera/preferences/IconListPreference;
    if-eqz v8, :cond_3

    .line 147
    const v3, 0x7f04001b

    const/4 v4, 0x0

    .line 146
    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/camera/ui/SubScreenIndicatorButton;

    .line 149
    .local v7, "view":Lcom/android/camera/ui/SubScreenIndicatorButton;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/ui/SettingScreenView;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/ui/SettingScreenView;->mPopupRoot:Landroid/view/ViewGroup;

    .line 150
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/ui/SettingScreenView;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/ui/SettingScreenView;->mParentPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    const/4 v12, -0x2

    move v11, v6

    .line 149
    invoke-virtual/range {v7 .. v14}, Lcom/android/camera/ui/SubScreenIndicatorButton;->initialize(Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;Landroid/view/ViewGroup;IILcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/ui/V6AbstractSettingPopup;)V

    .line 151
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/SettingScreenView;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-virtual {v8}, Lcom/android/camera/preferences/IconListPreference;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/android/camera/ui/SubScreenIndicatorButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 153
    invoke-virtual {v2, v7}, Lcom/android/camera/ui/StaticGridView;->addView(Landroid/view/View;)V

    .line 138
    .end local v7    # "view":Lcom/android/camera/ui/SubScreenIndicatorButton;
    :cond_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 123
    .end local v2    # "gridView":Lcom/android/camera/ui/StaticGridView;
    .end local v8    # "pref":Lcom/android/camera/preferences/IconListPreference;
    .end local v15    # "gridIndex":I
    .end local v18    # "listIndex":I
    :cond_4
    return-void
.end method

.method public initializeSettingScreen(Lcom/android/camera/preferences/PreferenceGroup;Ljava/util/List;ILcom/android/camera/ui/MessageDispacher;Landroid/view/ViewGroup;Lcom/android/camera/ui/V6AbstractSettingPopup;)V
    .locals 4
    .param p1, "preferenceGroup"    # Lcom/android/camera/preferences/PreferenceGroup;
    .param p3, "columns"    # I
    .param p4, "p"    # Lcom/android/camera/ui/MessageDispacher;
    .param p5, "popupRoot"    # Landroid/view/ViewGroup;
    .param p6, "parentPopup"    # Lcom/android/camera/ui/V6AbstractSettingPopup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/preferences/PreferenceGroup;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/android/camera/ui/MessageDispacher;",
            "Landroid/view/ViewGroup;",
            "Lcom/android/camera/ui/V6AbstractSettingPopup;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 58
    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mFadeIn:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mFadeOut:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mContext:Landroid/content/Context;

    const v1, 0x7f05000c

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mFadeIn:Landroid/view/animation/Animation;

    .line 65
    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mContext:Landroid/content/Context;

    const v1, 0x7f05000d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mFadeOut:Landroid/view/animation/Animation;

    .line 66
    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 67
    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingScreenView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c0058

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mParent:Landroid/view/View;

    .line 69
    iput-object p1, p0, Lcom/android/camera/ui/SettingScreenView;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    .line 70
    iput-object p4, p0, Lcom/android/camera/ui/SettingScreenView;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 71
    iput-object p2, p0, Lcom/android/camera/ui/SettingScreenView;->mKeys:Ljava/util/List;

    .line 72
    invoke-direct {p0}, Lcom/android/camera/ui/SettingScreenView;->initScreenView()V

    .line 74
    iput p3, p0, Lcom/android/camera/ui/SettingScreenView;->mColumnCount:I

    .line 75
    const v0, 0x7f0c005d

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SettingScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ScreenView;

    iput-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mSettingScreen:Lcom/android/camera/ui/ScreenView;

    .line 76
    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mSettingScreen:Lcom/android/camera/ui/ScreenView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 77
    iget v2, p0, Lcom/android/camera/ui/SettingScreenView;->mScreenHeight:I

    const/4 v3, -0x1

    .line 76
    invoke-direct {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ScreenView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mSettingScreen:Lcom/android/camera/ui/ScreenView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenView;->removeAllScreens()V

    .line 79
    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mSettingScreen:Lcom/android/camera/ui/ScreenView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ScreenView;->setOverScrollRatio(F)V

    .line 80
    iput-object p5, p0, Lcom/android/camera/ui/SettingScreenView;->mPopupRoot:Landroid/view/ViewGroup;

    .line 81
    iput-object p6, p0, Lcom/android/camera/ui/SettingScreenView;->mParentPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    .line 82
    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mDisabledIndicator:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 83
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingScreenView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c005b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 84
    invoke-direct {p0}, Lcom/android/camera/ui/SettingScreenView;->clearMessageDispatcher()V

    .line 85
    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 86
    invoke-virtual {p0, p2}, Lcom/android/camera/ui/SettingScreenView;->initIndicators(Ljava/util/List;)V

    .line 87
    invoke-direct {p0}, Lcom/android/camera/ui/SettingScreenView;->initializeSplitLine()V

    .line 88
    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mSettingScreen:Lcom/android/camera/ui/ScreenView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ScreenView;->setCurrentScreen(I)V

    .line 57
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 182
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 186
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 178
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/android/camera/ui/SettingScreenView;->clearMessageDispatcher()V

    .line 163
    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mSettingScreen:Lcom/android/camera/ui/ScreenView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenView;->removeAllScreens()V

    .line 164
    invoke-super {p0}, Lcom/android/camera/ui/SettingView;->onDestroy()V

    .line 161
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/android/camera/ui/SettingView;->onFinishInflate()V

    .line 53
    const v0, 0x7f0c005e

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SettingScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/SplitLineDrawer;

    iput-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mSplitLineDrawer:Lcom/android/camera/ui/SplitLineDrawer;

    .line 51
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 169
    iget-object v2, p0, Lcom/android/camera/ui/SettingScreenView;->mIndicators:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6AbstractIndicator;

    .line 170
    .local v0, "i":Lcom/android/camera/ui/V6AbstractIndicator;
    iget-object v2, p0, Lcom/android/camera/ui/SettingScreenView;->mDisabledIndicator:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractIndicator;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 171
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6AbstractIndicator;->setEnabled(Z)V

    goto :goto_0

    .line 174
    .end local v0    # "i":Lcom/android/camera/ui/V6AbstractIndicator;
    :cond_1
    invoke-super {p0, p1}, Lcom/android/camera/ui/SettingView;->setEnabled(Z)V

    .line 168
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 3
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 235
    iget-object v2, p0, Lcom/android/camera/ui/SettingScreenView;->mIndicators:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    return-void

    .line 236
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ui/SettingScreenView;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 237
    iget-object v2, p0, Lcom/android/camera/ui/SettingScreenView;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/V6AbstractIndicator;

    .line 238
    .local v1, "view":Lcom/android/camera/ui/V6AbstractIndicator;
    invoke-virtual {v1, p1, p2}, Lcom/android/camera/ui/V6AbstractIndicator;->setOrientation(IZ)V

    .line 236
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 234
    .end local v1    # "view":Lcom/android/camera/ui/V6AbstractIndicator;
    :cond_1
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 220
    if-nez p1, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingScreenView;->show()V

    .line 219
    :goto_0
    return-void

    .line 223
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingScreenView;->dismiss()V

    goto :goto_0
.end method

.method public show()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mParent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 193
    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mParent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mParent:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/ui/SettingScreenView;->mFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 190
    :cond_0
    return-void
.end method
