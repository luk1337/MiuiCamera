.class public Lcom/android/camera/ui/ModeView;
.super Landroid/widget/RelativeLayout;
.source "ModeView.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lcom/android/camera/ui/MessageDispacher;


# instance fields
.field private mColumnCount:I

.field protected mCurrentMode:Ljava/lang/String;

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

.field private mEnabled:Z

.field private mFirstSelectedItem:I

.field protected mIndicators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ui/V6IndicatorButton;",
            ">;"
        }
    .end annotation
.end field

.field protected mIsAnimating:Z

.field private mItemWidth:I

.field protected mKeepExitButtonGone:Z

.field protected mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

.field protected mOrientation:I

.field protected mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

.field protected mRotatables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ui/Rotatable;",
            ">;"
        }
    .end annotation
.end field

.field private mRowCount:I

.field private mSettingScreen:Lcom/android/camera/ui/ScreenView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 41
    const-string/jumbo v0, "mode_none"

    iput-object v0, p0, Lcom/android/camera/ui/ModeView;->mCurrentMode:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    iput-object v0, p0, Lcom/android/camera/ui/ModeView;->mIndicators:Ljava/util/ArrayList;

    .line 50
    iput v1, p0, Lcom/android/camera/ui/ModeView;->mOrientation:I

    .line 51
    iput-boolean v1, p0, Lcom/android/camera/ui/ModeView;->mIsAnimating:Z

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/ModeView;->mRotatables:Ljava/util/ArrayList;

    .line 58
    iput-boolean v1, p0, Lcom/android/camera/ui/ModeView;->mKeepExitButtonGone:Z

    .line 65
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/ModeView;->mDisabledIndicator:Ljava/util/Set;

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/ModeView;->mFirstSelectedItem:I

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const-string/jumbo v0, "mode_none"

    iput-object v0, p0, Lcom/android/camera/ui/ModeView;->mCurrentMode:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    iput-object v0, p0, Lcom/android/camera/ui/ModeView;->mIndicators:Ljava/util/ArrayList;

    .line 50
    iput v1, p0, Lcom/android/camera/ui/ModeView;->mOrientation:I

    .line 51
    iput-boolean v1, p0, Lcom/android/camera/ui/ModeView;->mIsAnimating:Z

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/ModeView;->mRotatables:Ljava/util/ArrayList;

    .line 58
    iput-boolean v1, p0, Lcom/android/camera/ui/ModeView;->mKeepExitButtonGone:Z

    .line 65
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/ModeView;->mDisabledIndicator:Ljava/util/Set;

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/ModeView;->mFirstSelectedItem:I

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    const-string/jumbo v0, "mode_none"

    iput-object v0, p0, Lcom/android/camera/ui/ModeView;->mCurrentMode:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    iput-object v0, p0, Lcom/android/camera/ui/ModeView;->mIndicators:Ljava/util/ArrayList;

    .line 50
    iput v1, p0, Lcom/android/camera/ui/ModeView;->mOrientation:I

    .line 51
    iput-boolean v1, p0, Lcom/android/camera/ui/ModeView;->mIsAnimating:Z

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/ModeView;->mRotatables:Ljava/util/ArrayList;

    .line 58
    iput-boolean v1, p0, Lcom/android/camera/ui/ModeView;->mKeepExitButtonGone:Z

    .line 65
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/ModeView;->mDisabledIndicator:Ljava/util/Set;

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/ModeView;->mFirstSelectedItem:I

    .line 79
    return-void
.end method

.method private initScreenView(I)V
    .locals 2
    .param p1, "keySize"    # I

    .prologue
    const/4 v0, 0x3

    .line 264
    const/16 v1, 0x9

    if-ge p1, v1, :cond_1

    .line 265
    add-int/lit8 v1, p1, 0x3

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/android/camera/ui/ModeView;->mRowCount:I

    .line 266
    if-ge p1, v0, :cond_0

    .end local p1    # "keySize":I
    :goto_0
    iput p1, p0, Lcom/android/camera/ui/ModeView;->mColumnCount:I

    .line 263
    :goto_1
    return-void

    .restart local p1    # "keySize":I
    :cond_0
    move p1, v0

    .line 266
    goto :goto_0

    .line 268
    :cond_1
    iput v0, p0, Lcom/android/camera/ui/ModeView;->mRowCount:I

    .line 269
    iput v0, p0, Lcom/android/camera/ui/ModeView;->mColumnCount:I

    goto :goto_1
.end method

.method private resetOtherSettings(Lcom/android/camera/ui/V6IndicatorButton;)V
    .locals 2
    .param p1, "but"    # Lcom/android/camera/ui/V6IndicatorButton;

    .prologue
    .line 149
    iget v0, p0, Lcom/android/camera/ui/ModeView;->mFirstSelectedItem:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/ModeView;->mFirstSelectedItem:I

    iget-object v1, p0, Lcom/android/camera/ui/ModeView;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/camera/ui/ModeView;->mIndicators:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/camera/ui/ModeView;->mFirstSelectedItem:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6IndicatorButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6IndicatorButton;->resetSettings()V

    .line 148
    :cond_0
    return-void
.end method


# virtual methods
.method public dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "what"    # I
    .param p2, "sender"    # I
    .param p3, "receiver"    # I
    .param p4, "extra1"    # Ljava/lang/Object;
    .param p5, "extra2"    # Ljava/lang/Object;

    .prologue
    .line 385
    const-string/jumbo v0, "Camera5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ModeView dispacherMessage mEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/ui/ModeView;->mEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 386
    const-string/jumbo v2, " what="

    .line 385
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 387
    const-string/jumbo v2, " sender="

    .line 385
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 388
    const-string/jumbo v2, " receiver="

    .line 385
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 389
    const-string/jumbo v2, " extra1="

    .line 385
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 390
    const-string/jumbo v2, " extra2="

    .line 385
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 391
    const-string/jumbo v2, " getVisibility()="

    .line 385
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 391
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeView;->getVisibility()I

    move-result v2

    .line 385
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 392
    const-string/jumbo v2, " mEnabled="

    .line 385
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 392
    iget-boolean v2, p0, Lcom/android/camera/ui/ModeView;->mEnabled:Z

    .line 385
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 394
    check-cast p5, Lcom/android/camera/ui/V6IndicatorButton;

    .end local p5    # "extra2":Ljava/lang/Object;
    invoke-direct {p0, p5}, Lcom/android/camera/ui/ModeView;->resetOtherSettings(Lcom/android/camera/ui/V6IndicatorButton;)V

    .line 395
    const/4 v0, 0x1

    return v0

    .line 398
    .restart local p5    # "extra2":Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/ModeView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPage;->onPopupChange()V

    .line 399
    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    .line 400
    instance-of v0, p5, Lcom/android/camera/ui/V6IndicatorButton;

    .line 399
    if-eqz v0, :cond_1

    move-object v0, p5

    .line 401
    check-cast v0, Lcom/android/camera/ui/V6IndicatorButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6IndicatorButton;->isItemSelected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 402
    iget-object v0, p0, Lcom/android/camera/ui/ModeView;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ModeView;->mFirstSelectedItem:I

    .line 407
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/ModeView;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const v2, 0x7f0c008b

    const/4 v3, 0x2

    move v1, p1

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 408
    instance-of v0, p5, Lcom/android/camera/ui/V6IndicatorButton;

    if-eqz v0, :cond_2

    .line 409
    const-string/jumbo v0, "Camera5"

    const-string/jumbo v1, "call indicatorbutton reloadPreference"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    check-cast p5, Lcom/android/camera/ui/V6IndicatorButton;

    .end local p5    # "extra2":Ljava/lang/Object;
    invoke-virtual {p5}, Lcom/android/camera/ui/V6IndicatorButton;->reloadPreference()V

    .line 412
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 404
    .restart local p5    # "extra2":Ljava/lang/Object;
    :cond_3
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/ModeView;->mFirstSelectedItem:I

    goto :goto_0
.end method

.method public dissmissAllPopup()V
    .locals 3

    .prologue
    .line 166
    iget-object v2, p0, Lcom/android/camera/ui/ModeView;->mIndicators:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "indicator$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6IndicatorButton;

    .line 167
    .local v0, "indicator":Lcom/android/camera/ui/V6AbstractIndicator;
    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractIndicator;->onDestroy()V

    .line 168
    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractIndicator;->getPopup()Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 169
    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractIndicator;->dismissPopup()Z

    goto :goto_0

    .line 165
    .end local v0    # "indicator":Lcom/android/camera/ui/V6AbstractIndicator;
    :cond_1
    return-void
.end method

.method public getCurrentPopup()Landroid/view/View;
    .locals 3

    .prologue
    .line 134
    iget-object v2, p0, Lcom/android/camera/ui/ModeView;->mIndicators:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6IndicatorButton;

    .line 135
    .local v0, "i":Lcom/android/camera/ui/V6IndicatorButton;
    invoke-virtual {v0}, Lcom/android/camera/ui/V6IndicatorButton;->isPopupVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6IndicatorButton;->getPopup()Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v2

    return-object v2

    .line 137
    .end local v0    # "i":Lcom/android/camera/ui/V6IndicatorButton;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method protected initIndicators(Ljava/util/List;)V
    .locals 21
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
    .line 275
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    div-int/lit8 v3, v3, 0x9

    add-int/lit8 v20, v3, 0x1

    .line 276
    .local v20, "screenCount":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/camera/ui/ModeView;->initScreenView(I)V

    .line 278
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/ModeView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 279
    const-string/jumbo v4, "layout_inflater"

    .line 278
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/LayoutInflater;

    .line 280
    .local v18, "inflater":Landroid/view/LayoutInflater;
    const/4 v9, 0x0

    .local v9, "screenIndex":I
    :goto_0
    move/from16 v0, v20

    if-ge v9, v0, :cond_4

    .line 281
    new-instance v2, Lcom/android/camera/ui/ModeGridView;

    .line 282
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/ModeView;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ui/ModeView;->mSettingScreen:Lcom/android/camera/ui/ScreenView;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/ui/ModeView;->mRowCount:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/camera/ui/ModeView;->mColumnCount:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/camera/ui/ModeView;->mItemWidth:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/camera/ui/ModeView;->mItemWidth:I

    .line 281
    invoke-direct/range {v2 .. v9}, Lcom/android/camera/ui/ModeGridView;-><init>(Landroid/content/Context;Lcom/android/camera/ui/ScreenView;IIIII)V

    .line 284
    .local v2, "gridView":Lcom/android/camera/ui/ModeGridView;
    const/16 v17, 0x0

    .line 274
    .local v17, "gridIndex":I
    :goto_1
    const/16 v3, 0x9

    .line 284
    move/from16 v0, v17

    if-ge v0, v3, :cond_0

    .line 286
    mul-int/lit8 v3, v9, 0x3

    mul-int/lit8 v3, v3, 0x3

    .line 285
    add-int v19, v17, v3

    .line 287
    .local v19, "listIndex":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v19

    if-lt v0, v3, :cond_1

    .line 305
    .end local v19    # "listIndex":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/ModeView;->mSettingScreen:Lcom/android/camera/ui/ScreenView;

    invoke-virtual {v3, v2}, Lcom/android/camera/ui/ScreenView;->addView(Landroid/view/View;)V

    .line 280
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 291
    .restart local v19    # "listIndex":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ui/ModeView;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v11

    check-cast v11, Lcom/android/camera/preferences/IconListPreference;

    .line 292
    .local v11, "pref":Lcom/android/camera/preferences/IconListPreference;
    if-eqz v11, :cond_3

    .line 293
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/camera/ui/ModeView;->updatePrefence(Lcom/android/camera/preferences/IconListPreference;)V

    .line 295
    const v3, 0x7f040023

    const/4 v4, 0x0

    .line 294
    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/camera/ui/V6IndicatorButton;

    .line 297
    .local v10, "b":Lcom/android/camera/ui/V6IndicatorButton;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/ModeView;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/android/camera/ActivityBase;

    invoke-virtual {v3}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->getPopupParent()Landroid/view/ViewGroup;

    move-result-object v13

    .line 298
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/ui/ModeView;->mItemWidth:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/ui/ModeView;->mItemWidth:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/ModeView;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    move-object/from16 v16, v0

    move-object/from16 v12, p0

    .line 296
    invoke-virtual/range {v10 .. v16}, Lcom/android/camera/ui/V6IndicatorButton;->initialize(Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;Landroid/view/ViewGroup;IILcom/android/camera/preferences/PreferenceGroup;)V

    .line 299
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Lcom/android/camera/ui/V6IndicatorButton;->setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V

    .line 300
    invoke-virtual {v10}, Lcom/android/camera/ui/V6IndicatorButton;->isItemSelected()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/ModeView;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/camera/ui/ModeView;->mFirstSelectedItem:I

    .line 301
    :cond_2
    invoke-virtual {v2, v10}, Lcom/android/camera/ui/ModeGridView;->addView(Landroid/view/View;)V

    .line 302
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/ModeView;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    .end local v10    # "b":Lcom/android/camera/ui/V6IndicatorButton;
    :cond_3
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    .line 273
    .end local v2    # "gridView":Lcom/android/camera/ui/ModeGridView;
    .end local v11    # "pref":Lcom/android/camera/preferences/IconListPreference;
    .end local v17    # "gridIndex":I
    .end local v19    # "listIndex":I
    :cond_4
    return-void
.end method

.method public initializeSettingScreen(Lcom/android/camera/preferences/PreferenceGroup;Ljava/util/List;Lcom/android/camera/ui/MessageDispacher;I)V
    .locals 5
    .param p1, "preferenceGroup"    # Lcom/android/camera/preferences/PreferenceGroup;
    .param p3, "p"    # Lcom/android/camera/ui/MessageDispacher;
    .param p4, "columns"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/preferences/PreferenceGroup;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/camera/ui/MessageDispacher;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 238
    iput-object p1, p0, Lcom/android/camera/ui/ModeView;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    .line 239
    iput-object p3, p0, Lcom/android/camera/ui/ModeView;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 241
    const v1, 0x7f0c005d

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ModeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/ScreenView;

    iput-object v1, p0, Lcom/android/camera/ui/ModeView;->mSettingScreen:Lcom/android/camera/ui/ScreenView;

    .line 242
    iget-object v1, p0, Lcom/android/camera/ui/ModeView;->mSettingScreen:Lcom/android/camera/ui/ScreenView;

    const v2, 0x7f020113

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/ScreenView;->setSeekPointResource(I)V

    .line 246
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 248
    const/16 v1, 0x31

    .line 246
    invoke-direct {v0, v4, v4, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 250
    .local v0, "seekbarParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0035

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 249
    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 251
    iget-object v1, p0, Lcom/android/camera/ui/ModeView;->mSettingScreen:Lcom/android/camera/ui/ScreenView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/ScreenView;->setSeekBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 252
    iget-object v1, p0, Lcom/android/camera/ui/ModeView;->mSettingScreen:Lcom/android/camera/ui/ScreenView;

    invoke-virtual {v1}, Lcom/android/camera/ui/ScreenView;->removeAllScreens()V

    .line 253
    iget-object v1, p0, Lcom/android/camera/ui/ModeView;->mSettingScreen:Lcom/android/camera/ui/ScreenView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/ScreenView;->setOverScrollRatio(F)V

    .line 254
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/ui/ModeView;->mFirstSelectedItem:I

    .line 255
    iget-object v1, p0, Lcom/android/camera/ui/ModeView;->mDisabledIndicator:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 256
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeView;->dissmissAllPopup()V

    .line 257
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeView;->removePopup()V

    .line 258
    iget-object v1, p0, Lcom/android/camera/ui/ModeView;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 259
    invoke-virtual {p0, p2}, Lcom/android/camera/ui/ModeView;->initIndicators(Ljava/util/List;)V

    .line 260
    iget-object v1, p0, Lcom/android/camera/ui/ModeView;->mSettingScreen:Lcom/android/camera/ui/ScreenView;

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/ScreenView;->setCurrentScreen(I)V

    .line 237
    return-void
.end method

.method public isItemSelected()Z
    .locals 2

    .prologue
    .line 379
    iget v0, p0, Lcom/android/camera/ui/ModeView;->mFirstSelectedItem:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 341
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 356
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 337
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 85
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 86
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ModeView;->mItemWidth:I

    .line 84
    return-void
.end method

.method public varargs overrideSettings([Ljava/lang/String;)V
    .locals 3
    .param p1, "keyvalues"    # [Ljava/lang/String;

    .prologue
    .line 175
    array-length v2, p1

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 176
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 179
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/ModeView;->mIndicators:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "b$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6IndicatorButton;

    .line 180
    .local v0, "b":Lcom/android/camera/ui/V6IndicatorButton;
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6IndicatorButton;->overrideSettings([Ljava/lang/String;)V

    goto :goto_0

    .line 174
    .end local v0    # "b":Lcom/android/camera/ui/V6IndicatorButton;
    :cond_1
    return-void
.end method

.method public reloadPreferences()V
    .locals 4

    .prologue
    .line 100
    iget-object v2, p0, Lcom/android/camera/ui/ModeView;->mIndicators:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "b$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6IndicatorButton;

    .line 101
    .local v0, "b":Lcom/android/camera/ui/V6AbstractIndicator;
    iget v2, p0, Lcom/android/camera/ui/ModeView;->mOrientation:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/ui/V6AbstractIndicator;->setOrientation(IZ)V

    .line 102
    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractIndicator;->reloadPreference()V

    goto :goto_0

    .line 99
    .end local v0    # "b":Lcom/android/camera/ui/V6AbstractIndicator;
    :cond_0
    return-void
.end method

.method public removePopup()V
    .locals 3

    .prologue
    .line 117
    iget-object v2, p0, Lcom/android/camera/ui/ModeView;->mIndicators:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "indicator$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6IndicatorButton;

    .line 118
    .local v0, "indicator":Lcom/android/camera/ui/V6IndicatorButton;
    invoke-virtual {v0}, Lcom/android/camera/ui/V6IndicatorButton;->removePopup()V

    .line 120
    iget-object v2, p0, Lcom/android/camera/ui/ModeView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/camera/ui/PopupManager;->removeOnOtherPopupShowedListener(Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;)V

    goto :goto_0

    .line 116
    .end local v0    # "indicator":Lcom/android/camera/ui/V6IndicatorButton;
    :cond_0
    return-void
.end method

.method public resetSelectedFlag()V
    .locals 1

    .prologue
    .line 416
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/ModeView;->mFirstSelectedItem:I

    .line 415
    return-void
.end method

.method public resetSettings()Z
    .locals 3

    .prologue
    .line 321
    const/4 v0, 0x0

    .line 322
    .local v0, "result":Z
    iget v1, p0, Lcom/android/camera/ui/ModeView;->mFirstSelectedItem:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/camera/ui/ModeView;->mFirstSelectedItem:I

    iget-object v2, p0, Lcom/android/camera/ui/ModeView;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 323
    iget-object v1, p0, Lcom/android/camera/ui/ModeView;->mIndicators:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/camera/ui/ModeView;->mFirstSelectedItem:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/V6IndicatorButton;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6IndicatorButton;->resetSettings()V

    .line 324
    const/4 v0, 0x1

    .line 326
    :cond_0
    return v0
.end method

.method public setEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 311
    iput-boolean p1, p0, Lcom/android/camera/ui/ModeView;->mEnabled:Z

    .line 312
    iget-object v2, p0, Lcom/android/camera/ui/ModeView;->mIndicators:Ljava/util/ArrayList;

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

    check-cast v0, Lcom/android/camera/ui/V6IndicatorButton;

    .line 313
    .local v0, "i":Lcom/android/camera/ui/V6AbstractIndicator;
    iget-object v2, p0, Lcom/android/camera/ui/ModeView;->mDisabledIndicator:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractIndicator;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 314
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6AbstractIndicator;->setEnabled(Z)V

    goto :goto_0

    .line 317
    .end local v0    # "i":Lcom/android/camera/ui/V6AbstractIndicator;
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 310
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 3
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 91
    iput p1, p0, Lcom/android/camera/ui/ModeView;->mOrientation:I

    .line 92
    iget-object v2, p0, Lcom/android/camera/ui/ModeView;->mIndicators:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    return-void

    .line 93
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ui/ModeView;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 94
    iget-object v2, p0, Lcom/android/camera/ui/ModeView;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/V6AbstractIndicator;

    .line 95
    .local v1, "view":Lcom/android/camera/ui/V6AbstractIndicator;
    invoke-virtual {v1, p1, p2}, Lcom/android/camera/ui/V6AbstractIndicator;->setOrientation(IZ)V

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    .end local v1    # "view":Lcom/android/camera/ui/V6AbstractIndicator;
    :cond_1
    return-void
.end method

.method protected updatePrefence(Lcom/android/camera/preferences/IconListPreference;)V
    .locals 2
    .param p1, "pref"    # Lcom/android/camera/preferences/IconListPreference;

    .prologue
    .line 199
    const-string/jumbo v0, "pref_camera_shader_coloreffect_key"

    invoke-virtual {p1}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->getEntries()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/preferences/IconListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 201
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->getEntryValues()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/preferences/IconListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 198
    :cond_0
    return-void
.end method
