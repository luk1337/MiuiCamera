.class public Lcom/android/camera/ui/EffectPopup;
.super Lcom/android/camera/ui/V6AbstractSettingPopup;
.source "EffectPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/EffectPopup$1;,
        Lcom/android/camera/ui/EffectPopup$EffectDivider;,
        Lcom/android/camera/ui/EffectPopup$EffectDynamicItemHolder;,
        Lcom/android/camera/ui/EffectPopup$EffectDynamicItemRender;,
        Lcom/android/camera/ui/EffectPopup$EffectItemAdapter;,
        Lcom/android/camera/ui/EffectPopup$EffectItemHolder;,
        Lcom/android/camera/ui/EffectPopup$EffectItemPadding;,
        Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;,
        Lcom/android/camera/ui/EffectPopup$EffectStillItemHolder;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field protected mCurrentIndex:I

.field private mEffectItemAdapter:Lcom/android/camera/ui/EffectPopup$EffectItemAdapter;

.field private mEffectItemHolderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/ui/EffectPopup$EffectItemHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mHolderHeight:I

.field private mHolderWidth:I

.field protected mIgnoreSameItemClick:Z

.field private mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mSelectedOverlay:Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;

.field private mTextView:Landroid/widget/TextView;

.field private mTextureHeight:I

.field private mTextureOffsetX:I

.field private mTextureOffsetY:I

.field private mTextureWidth:I

.field private mToastAnim:Landroid/view/animation/Animation;

.field private mToastAnimListener:Landroid/view/animation/Animation$AnimationListener;

.field private mTotalWidth:I


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/EffectPopup;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/camera/ui/EffectPopup;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup;->mEffectItemHolderList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/camera/ui/EffectPopup;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/EffectPopup;->mHolderHeight:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/camera/ui/EffectPopup;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/EffectPopup;->mHolderWidth:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/camera/ui/EffectPopup;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/camera/ui/EffectPopup;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/camera/ui/EffectPopup;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/EffectPopup;->mTextureHeight:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/camera/ui/EffectPopup;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/EffectPopup;->mTextureOffsetX:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/camera/ui/EffectPopup;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/EffectPopup;->mTextureOffsetY:I

    return v0
.end method

.method static synthetic -get9(Lcom/android/camera/ui/EffectPopup;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/EffectPopup;->mTextureWidth:I

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    const-string/jumbo v0, "EffectPopup"

    iput-object v0, p0, Lcom/android/camera/ui/EffectPopup;->TAG:Ljava/lang/String;

    .line 64
    new-instance v0, Lcom/android/camera/ui/EffectPopup$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/EffectPopup$1;-><init>(Lcom/android/camera/ui/EffectPopup;)V

    iput-object v0, p0, Lcom/android/camera/ui/EffectPopup;->mToastAnimListener:Landroid/view/animation/Animation$AnimationListener;

    .line 86
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/EffectPopup;->mEffectItemHolderList:Ljava/util/List;

    .line 88
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/EffectPopup;->mCurrentIndex:I

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/EffectPopup;->mIgnoreSameItemClick:Z

    .line 91
    return-void
.end method


# virtual methods
.method public getAnimation(Z)Landroid/view/animation/Animation;
    .locals 2
    .param p1, "slideUp"    # Z

    .prologue
    .line 219
    iget-object v1, p0, Lcom/android/camera/ui/EffectPopup;->mContext:Landroid/content/Context;

    .line 220
    if-eqz p1, :cond_0

    const v0, 0x7f050002

    .line 219
    :goto_0
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    .line 220
    :cond_0
    const v0, 0x7f050001

    goto :goto_0
.end method

.method public initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V
    .locals 10
    .param p1, "preferenceGroup"    # Lcom/android/camera/preferences/PreferenceGroup;
    .param p2, "preference"    # Lcom/android/camera/preferences/IconListPreference;
    .param p3, "p"    # Lcom/android/camera/ui/MessageDispacher;

    .prologue
    const/4 v9, 0x0

    .line 97
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/ui/V6AbstractSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectPopup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 99
    .local v0, "context":Landroid/content/Context;
    iget-object v6, p0, Lcom/android/camera/ui/EffectPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v6}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 101
    .local v3, "entries":[Ljava/lang/CharSequence;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v2, "effectItem":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v6, v3

    if-ge v4, v6, :cond_0

    .line 103
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 104
    .local v5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v6, "text"

    aget-object v7, v3, v4

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 109
    .end local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    :try_start_0
    const-class v6, Landroid/support/v7/widget/RecyclerView;

    const-string/jumbo v7, "mRecycler"

    const-class v8, Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-static {v6, v7, v8}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lmiui/reflect/Field;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/ui/EffectPopup;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6, v7}, Lmiui/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/RecyclerView$Recycler;

    iput-object v6, p0, Lcom/android/camera/ui/EffectPopup;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;
    :try_end_0
    .catch Lmiui/reflect/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v6, p0, Lcom/android/camera/ui/EffectPopup;->mTotalWidth:I

    .line 115
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080058

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/camera/ui/EffectPopup;->mHolderWidth:I

    .line 116
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080059

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/camera/ui/EffectPopup;->mHolderHeight:I

    .line 117
    const v6, 0x7f050004

    invoke-static {v0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/ui/EffectPopup;->mToastAnim:Landroid/view/animation/Animation;

    .line 118
    iget-object v6, p0, Lcom/android/camera/ui/EffectPopup;->mToastAnim:Landroid/view/animation/Animation;

    iget-object v7, p0, Lcom/android/camera/ui/EffectPopup;->mToastAnimListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v6, v7}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 119
    new-instance v6, Lcom/android/camera/ui/EffectPopup$EffectItemAdapter;

    invoke-direct {v6, p0, v0, v2}, Lcom/android/camera/ui/EffectPopup$EffectItemAdapter;-><init>(Lcom/android/camera/ui/EffectPopup;Landroid/content/Context;Ljava/util/List;)V

    iput-object v6, p0, Lcom/android/camera/ui/EffectPopup;->mEffectItemAdapter:Lcom/android/camera/ui/EffectPopup$EffectItemAdapter;

    .line 120
    new-instance v6, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v6, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/camera/ui/EffectPopup;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 121
    iget-object v6, p0, Lcom/android/camera/ui/EffectPopup;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v6, v9}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 122
    iget-object v6, p0, Lcom/android/camera/ui/EffectPopup;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object v6

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/effect/EffectController;->getEffectCount()I

    move-result v7

    invoke-virtual {v6, v9, v7}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 123
    iget-object v6, p0, Lcom/android/camera/ui/EffectPopup;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, p0, Lcom/android/camera/ui/EffectPopup;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 124
    iget-object v6, p0, Lcom/android/camera/ui/EffectPopup;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v7, Lcom/android/camera/ui/EffectPopup$EffectItemPadding;

    invoke-direct {v7, p0}, Lcom/android/camera/ui/EffectPopup$EffectItemPadding;-><init>(Lcom/android/camera/ui/EffectPopup;)V

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 125
    iget-object v6, p0, Lcom/android/camera/ui/EffectPopup;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v7, Lcom/android/camera/ui/EffectPopup$EffectDivider;

    sget v8, Lcom/android/camera/effect/EffectController;->sDividerIndex:I

    invoke-direct {v7, p0, v8}, Lcom/android/camera/ui/EffectPopup$EffectDivider;-><init>(Lcom/android/camera/ui/EffectPopup;I)V

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 126
    new-instance v6, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;

    invoke-direct {v6, p0}, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;-><init>(Lcom/android/camera/ui/EffectPopup;)V

    iput-object v6, p0, Lcom/android/camera/ui/EffectPopup;->mSelectedOverlay:Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;

    .line 127
    iget-object v6, p0, Lcom/android/camera/ui/EffectPopup;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, p0, Lcom/android/camera/ui/EffectPopup;->mSelectedOverlay:Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 128
    iget-object v6, p0, Lcom/android/camera/ui/EffectPopup;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, p0, Lcom/android/camera/ui/EffectPopup;->mEffectItemAdapter:Lcom/android/camera/ui/EffectPopup$EffectItemAdapter;

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 129
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectPopup;->reloadPreference()V

    .line 96
    return-void

    .line 110
    :catch_0
    move-exception v1

    .line 111
    .local v1, "e":Lmiui/reflect/NoSuchFieldException;
    const-string/jumbo v6, "EffectPopup"

    const-string/jumbo v7, "no mRecycler field "

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method protected notifyToDispatcher(Z)V
    .locals 6
    .param p1, "sameItem"    # Z

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 191
    iget-object v1, p0, Lcom/android/camera/ui/EffectPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 188
    const/4 v1, 0x6

    .line 189
    const/4 v2, 0x0

    .line 190
    const/4 v3, 0x3

    move-object v5, p0

    .line 187
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 185
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 157
    iget-object v3, p0, Lcom/android/camera/ui/EffectPopup;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 158
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 159
    .local v1, "index":I
    iget v3, p0, Lcom/android/camera/ui/EffectPopup;->mCurrentIndex:I

    if-ne v3, v1, :cond_1

    iget-boolean v3, p0, Lcom/android/camera/ui/EffectPopup;->mIgnoreSameItemClick:Z

    if-eqz v3, :cond_1

    return-void

    .line 160
    :cond_1
    iget v3, p0, Lcom/android/camera/ui/EffectPopup;->mCurrentIndex:I

    if-ne v3, v1, :cond_4

    const/4 v2, 0x1

    .line 162
    .local v2, "sameItem":Z
    :goto_0
    iput v1, p0, Lcom/android/camera/ui/EffectPopup;->mCurrentIndex:I

    .line 163
    iget-object v3, p0, Lcom/android/camera/ui/EffectPopup;->mSelectedOverlay:Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;

    iget v4, p0, Lcom/android/camera/ui/EffectPopup;->mCurrentIndex:I

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->select(I)V

    .line 164
    iget-object v3, p0, Lcom/android/camera/ui/EffectPopup;->mTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/camera/ui/EffectPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v4}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/EffectPopup;->mCurrentIndex:I

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v3, p0, Lcom/android/camera/ui/EffectPopup;->mTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/camera/ui/EffectPopup;->mToastAnim:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 166
    iget-object v3, p0, Lcom/android/camera/ui/EffectPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3, v1}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    .line 168
    const-string/jumbo v3, "pref_camera_scenemode_key"

    iget-object v4, p0, Lcom/android/camera/ui/EffectPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v4}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 169
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->setFocusModeSwitching(Z)V

    .line 176
    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/camera/effect/EffectController;->setInvertFlag(I)V

    .line 177
    iget-object v3, p0, Lcom/android/camera/ui/EffectPopup;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/android/camera/ActivityBase;

    invoke-virtual {v3}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->getEffectCropView()Lcom/android/camera/ui/V6EffectCropView;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/EffectPopup;->mCurrentIndex:I

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/V6EffectCropView;->updateVisible(I)V

    .line 178
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/EffectPopup;->notifyToDispatcher(Z)V

    .line 179
    iget v3, p0, Lcom/android/camera/ui/EffectPopup;->mCurrentIndex:I

    if-eqz v3, :cond_3

    .line 180
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ui/EffectPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v4}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 182
    :cond_3
    iget-object v3, p0, Lcom/android/camera/ui/EffectPopup;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 156
    return-void

    .line 160
    .end local v2    # "sameItem":Z
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "sameItem":Z
    goto :goto_0

    .line 170
    :cond_5
    const-string/jumbo v3, "pref_audio_focus_key"

    iget-object v4, p0, Lcom/android/camera/ui/EffectPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v4}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 171
    iget-object v3, p0, Lcom/android/camera/ui/EffectPopup;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/android/camera/ActivityBase;

    invoke-virtual {v3}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/module/Module;->isVideoRecording()Z

    move-result v3

    .line 170
    if-eqz v3, :cond_2

    .line 172
    iget-object v3, p0, Lcom/android/camera/ui/EffectPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "audioFocus":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "camcorder_mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 206
    invoke-super {p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->onFinishInflate()V

    .line 207
    const v0, 0x7f09002a

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/EffectPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/camera/ui/EffectPopup;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 208
    const v0, 0x7f090028

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/EffectPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/EffectPopup;->mTextView:Landroid/widget/TextView;

    .line 205
    return-void
.end method

.method public reloadPreference()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/EffectPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/EffectPopup;->mCurrentIndex:I

    .line 140
    iget v0, p0, Lcom/android/camera/ui/EffectPopup;->mCurrentIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 142
    invoke-static {}, Lcom/android/camera/Device;->isNeedForceRecycleEffectPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/android/camera/ui/EffectPopup;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->removeAndRecycleAllViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 145
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/EffectPopup;->mCurrentIndex:I

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/EffectPopup;->setItemInCenter(I)V

    .line 146
    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup;->mSelectedOverlay:Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;

    iget v1, p0, Lcom/android/camera/ui/EffectPopup;->mCurrentIndex:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->select(I)V

    .line 138
    :goto_0
    return-void

    .line 148
    :cond_1
    const-string/jumbo v0, "EffectPopup"

    const-string/jumbo v1, "Invalid preference value."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->print()V

    goto :goto_0
.end method

.method public requestEffectRender()V
    .locals 4

    .prologue
    .line 231
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/camera/ui/EffectPopup;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v3}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 232
    iget-object v3, p0, Lcom/android/camera/ui/EffectPopup;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 233
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 234
    iget-object v3, p0, Lcom/android/camera/ui/EffectPopup;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;

    .line 235
    .local v0, "holder":Lcom/android/camera/ui/EffectPopup$EffectItemHolder;
    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0}, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;->requestRender()V

    .line 231
    .end local v0    # "holder":Lcom/android/camera/ui/EffectPopup$EffectItemHolder;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 230
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 224
    invoke-super {p0, p1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setEnabled(Z)V

    .line 225
    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setEnabled(Z)V

    .line 223
    :cond_0
    return-void
.end method

.method protected setItemInCenter(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 133
    iget v1, p0, Lcom/android/camera/ui/EffectPopup;->mTotalWidth:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/android/camera/ui/EffectPopup;->mHolderWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int v0, v1, v2

    .line 134
    .local v0, "offset":I
    iget-object v1, p0, Lcom/android/camera/ui/EffectPopup;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1, p1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 132
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 212
    return-void
.end method

.method public show(Z)V
    .locals 2
    .param p1, "animation"    # Z

    .prologue
    .line 197
    invoke-super {p0, p1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->show(Z)V

    .line 198
    const-string/jumbo v0, "pref_camera_scenemode_key"

    iget-object v1, p0, Lcom/android/camera/ui/EffectPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    const-string/jumbo v0, "auto"

    iget-object v1, p0, Lcom/android/camera/ui/EffectPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setFocusModeSwitching(Z)V

    goto :goto_0
.end method

.method public startEffectRender()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 243
    iget-object v5, p0, Lcom/android/camera/ui/EffectPopup;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/android/camera/ActivityBase;

    invoke-virtual {v5}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v4

    .line 244
    .local v4, "screen":Lcom/android/camera/CameraScreenNail;
    invoke-virtual {v4}, Lcom/android/camera/CameraScreenNail;->getRenderWidth()I

    move-result v3

    .line 245
    .local v3, "renderWidth":I
    invoke-virtual {v4}, Lcom/android/camera/CameraScreenNail;->getRenderHeight()I

    move-result v2

    .line 247
    .local v2, "renderHeight":I
    iput v6, p0, Lcom/android/camera/ui/EffectPopup;->mTextureOffsetX:I

    .line 248
    iput v6, p0, Lcom/android/camera/ui/EffectPopup;->mTextureOffsetY:I

    .line 249
    iget v5, p0, Lcom/android/camera/ui/EffectPopup;->mHolderWidth:I

    iput v5, p0, Lcom/android/camera/ui/EffectPopup;->mTextureWidth:I

    .line 250
    iget v5, p0, Lcom/android/camera/ui/EffectPopup;->mHolderHeight:I

    iput v5, p0, Lcom/android/camera/ui/EffectPopup;->mTextureHeight:I

    .line 253
    iget v5, p0, Lcom/android/camera/ui/EffectPopup;->mHolderWidth:I

    mul-int/2addr v5, v2

    iget v6, p0, Lcom/android/camera/ui/EffectPopup;->mHolderHeight:I

    mul-int/2addr v6, v3

    if-le v5, v6, :cond_0

    .line 256
    iget v5, p0, Lcom/android/camera/ui/EffectPopup;->mHolderWidth:I

    mul-int/2addr v5, v2

    div-int/2addr v5, v3

    iput v5, p0, Lcom/android/camera/ui/EffectPopup;->mTextureHeight:I

    .line 257
    iget v5, p0, Lcom/android/camera/ui/EffectPopup;->mTextureHeight:I

    iget v6, p0, Lcom/android/camera/ui/EffectPopup;->mHolderHeight:I

    sub-int/2addr v5, v6

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/android/camera/ui/EffectPopup;->mTextureOffsetY:I

    .line 265
    :goto_0
    iget-object v5, p0, Lcom/android/camera/ui/EffectPopup;->mEffectItemHolderList:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "holder$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;

    .line 266
    .local v0, "holder":Lcom/android/camera/ui/EffectPopup$EffectItemHolder;
    invoke-virtual {v0}, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;->start()V

    goto :goto_1

    .line 261
    .end local v0    # "holder":Lcom/android/camera/ui/EffectPopup$EffectItemHolder;
    .end local v1    # "holder$iterator":Ljava/util/Iterator;
    :cond_0
    iget v5, p0, Lcom/android/camera/ui/EffectPopup;->mHolderHeight:I

    mul-int/2addr v5, v3

    div-int/2addr v5, v2

    iput v5, p0, Lcom/android/camera/ui/EffectPopup;->mTextureWidth:I

    .line 262
    iget v5, p0, Lcom/android/camera/ui/EffectPopup;->mTextureWidth:I

    iget v6, p0, Lcom/android/camera/ui/EffectPopup;->mHolderWidth:I

    sub-int/2addr v5, v6

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/android/camera/ui/EffectPopup;->mTextureOffsetX:I

    goto :goto_0

    .line 242
    .restart local v1    # "holder$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public stopEffectRender()V
    .locals 3

    .prologue
    .line 271
    iget-object v2, p0, Lcom/android/camera/ui/EffectPopup;->mEffectItemHolderList:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "holder$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;

    .line 272
    .local v0, "holder":Lcom/android/camera/ui/EffectPopup$EffectItemHolder;
    invoke-virtual {v0}, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;->stop()V

    goto :goto_0

    .line 270
    .end local v0    # "holder":Lcom/android/camera/ui/EffectPopup$EffectItemHolder;
    :cond_0
    return-void
.end method

.method public updateBackground()V
    .locals 4

    .prologue
    .line 278
    iget-object v2, p0, Lcom/android/camera/ui/EffectPopup;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/android/camera/ActivityBase;

    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/V6PreviewFrame;->isFullScreen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 279
    iget-object v2, p0, Lcom/android/camera/ui/EffectPopup;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const v3, 0x7f0c0007

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setBackgroundResource(I)V

    .line 283
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ui/EffectPopup;->mEffectItemHolderList:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "holder$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;

    .line 284
    .local v0, "holder":Lcom/android/camera/ui/EffectPopup$EffectItemHolder;
    invoke-virtual {v0}, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;->updateBackground()V

    goto :goto_1

    .line 281
    .end local v0    # "holder":Lcom/android/camera/ui/EffectPopup$EffectItemHolder;
    .end local v1    # "holder$iterator":Ljava/util/Iterator;
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/EffectPopup;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const v3, 0x7f0c0006

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setBackgroundResource(I)V

    goto :goto_0

    .line 277
    .restart local v1    # "holder$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method
