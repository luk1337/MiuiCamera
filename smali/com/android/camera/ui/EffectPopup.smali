.class public Lcom/android/camera/ui/EffectPopup;
.super Lcom/android/camera/ui/V6AbstractSettingPopup;
.source "EffectPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
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

.field private mTextureHeight:I

.field private mTextureOffsetX:I

.field private mTextureOffsetY:I

.field private mTextureWidth:I

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

.method static synthetic -get5(Lcom/android/camera/ui/EffectPopup;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/EffectPopup;->mTextureHeight:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/camera/ui/EffectPopup;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/EffectPopup;->mTextureOffsetX:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/camera/ui/EffectPopup;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/EffectPopup;->mTextureOffsetY:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/camera/ui/EffectPopup;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/EffectPopup;->mTextureWidth:I

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const-string/jumbo v0, "EffectPopup"

    iput-object v0, p0, Lcom/android/camera/ui/EffectPopup;->TAG:Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/EffectPopup;->mEffectItemHolderList:Ljava/util/List;

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/EffectPopup;->mCurrentIndex:I

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/EffectPopup;->mIgnoreSameItemClick:Z

    .line 71
    return-void
.end method


# virtual methods
.method public getAnimation(Z)Landroid/view/animation/Animation;
    .locals 2
    .param p1, "slideUp"    # Z

    .prologue
    .line 190
    iget-object v1, p0, Lcom/android/camera/ui/EffectPopup;->mContext:Landroid/content/Context;

    .line 191
    if-eqz p1, :cond_0

    const v0, 0x7f050002

    .line 190
    :goto_0
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    .line 191
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

    .line 77
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/ui/V6AbstractSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectPopup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 79
    .local v0, "context":Landroid/content/Context;
    iget-object v5, p0, Lcom/android/camera/ui/EffectPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v5}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 81
    .local v2, "entries":[Ljava/lang/CharSequence;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v1, "effectItem":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v2

    if-ge v3, v5, :cond_0

    .line 83
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 84
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v5, "text"

    aget-object v6, v2, v3

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 88
    .end local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    iget-object v5, p0, Lcom/android/camera/ui/EffectPopup;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->getClass()Ljava/lang/Class;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/ui/EffectPopup;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const-string/jumbo v7, "mRecycler"

    const-string/jumbo v8, ""

    invoke-static {v5, v6, v7, v8}, Lcom/android/camera/aosp_porting/ReflectUtil;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$Recycler;

    iput-object v5, p0, Lcom/android/camera/ui/EffectPopup;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    .line 90
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v5, p0, Lcom/android/camera/ui/EffectPopup;->mTotalWidth:I

    .line 91
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b005c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/camera/ui/EffectPopup;->mHolderWidth:I

    .line 92
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b005d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/camera/ui/EffectPopup;->mHolderHeight:I

    .line 93
    new-instance v5, Lcom/android/camera/ui/EffectPopup$EffectItemAdapter;

    invoke-direct {v5, p0, v0, v1}, Lcom/android/camera/ui/EffectPopup$EffectItemAdapter;-><init>(Lcom/android/camera/ui/EffectPopup;Landroid/content/Context;Ljava/util/List;)V

    iput-object v5, p0, Lcom/android/camera/ui/EffectPopup;->mEffectItemAdapter:Lcom/android/camera/ui/EffectPopup$EffectItemAdapter;

    .line 94
    new-instance v5, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v5, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/camera/ui/EffectPopup;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 95
    iget-object v5, p0, Lcom/android/camera/ui/EffectPopup;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v5, v9}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 96
    iget-object v5, p0, Lcom/android/camera/ui/EffectPopup;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object v5

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/effect/EffectController;->getEffectCount()I

    move-result v6

    invoke-virtual {v5, v9, v6}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 97
    iget-object v5, p0, Lcom/android/camera/ui/EffectPopup;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, p0, Lcom/android/camera/ui/EffectPopup;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 98
    iget-object v5, p0, Lcom/android/camera/ui/EffectPopup;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v6, Lcom/android/camera/ui/EffectPopup$EffectItemPadding;

    invoke-direct {v6, p0}, Lcom/android/camera/ui/EffectPopup$EffectItemPadding;-><init>(Lcom/android/camera/ui/EffectPopup;)V

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 99
    iget-object v5, p0, Lcom/android/camera/ui/EffectPopup;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v6, Lcom/android/camera/ui/EffectPopup$EffectDivider;

    sget v7, Lcom/android/camera/effect/EffectController;->sDividerIndex:I

    invoke-direct {v6, p0, v7}, Lcom/android/camera/ui/EffectPopup$EffectDivider;-><init>(Lcom/android/camera/ui/EffectPopup;I)V

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 100
    new-instance v5, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;

    invoke-direct {v5, p0}, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;-><init>(Lcom/android/camera/ui/EffectPopup;)V

    iput-object v5, p0, Lcom/android/camera/ui/EffectPopup;->mSelectedOverlay:Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;

    .line 101
    iget-object v5, p0, Lcom/android/camera/ui/EffectPopup;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, p0, Lcom/android/camera/ui/EffectPopup;->mSelectedOverlay:Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 102
    iget-object v5, p0, Lcom/android/camera/ui/EffectPopup;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, p0, Lcom/android/camera/ui/EffectPopup;->mEffectItemAdapter:Lcom/android/camera/ui/EffectPopup$EffectItemAdapter;

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectPopup;->reloadPreference()V

    .line 76
    return-void
.end method

.method protected notifyToDispatcher(Z)V
    .locals 6
    .param p1, "sameItem"    # Z

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 163
    iget-object v1, p0, Lcom/android/camera/ui/EffectPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 160
    const/4 v1, 0x6

    .line 161
    const/4 v2, 0x0

    .line 162
    const/4 v3, 0x3

    move-object v5, p0

    .line 159
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 157
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 131
    iget-object v3, p0, Lcom/android/camera/ui/EffectPopup;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 132
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 133
    .local v1, "index":I
    iget v3, p0, Lcom/android/camera/ui/EffectPopup;->mCurrentIndex:I

    if-ne v3, v1, :cond_1

    iget-boolean v3, p0, Lcom/android/camera/ui/EffectPopup;->mIgnoreSameItemClick:Z

    if-eqz v3, :cond_1

    return-void

    .line 134
    :cond_1
    iget v3, p0, Lcom/android/camera/ui/EffectPopup;->mCurrentIndex:I

    if-ne v3, v1, :cond_4

    const/4 v2, 0x1

    .line 136
    .local v2, "sameItem":Z
    :goto_0
    iput v1, p0, Lcom/android/camera/ui/EffectPopup;->mCurrentIndex:I

    .line 137
    iget-object v3, p0, Lcom/android/camera/ui/EffectPopup;->mSelectedOverlay:Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;

    iget v4, p0, Lcom/android/camera/ui/EffectPopup;->mCurrentIndex:I

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->select(I)V

    .line 138
    iget-object v3, p0, Lcom/android/camera/ui/EffectPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3, v1}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    .line 140
    const-string/jumbo v3, "pref_camera_scenemode_key"

    iget-object v4, p0, Lcom/android/camera/ui/EffectPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v4}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 141
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->setFocusModeSwitching(Z)V

    .line 148
    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/camera/effect/EffectController;->setInvertFlag(I)V

    .line 149
    iget-object v3, p0, Lcom/android/camera/ui/EffectPopup;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/android/camera/ActivityBase;

    invoke-virtual {v3}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->getEffectCropView()Lcom/android/camera/ui/V6EffectCropView;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/EffectPopup;->mCurrentIndex:I

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/V6EffectCropView;->updateVisible(I)V

    .line 150
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/EffectPopup;->notifyToDispatcher(Z)V

    .line 151
    iget v3, p0, Lcom/android/camera/ui/EffectPopup;->mCurrentIndex:I

    if-eqz v3, :cond_3

    .line 152
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ui/EffectPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v4}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 154
    :cond_3
    iget-object v3, p0, Lcom/android/camera/ui/EffectPopup;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 130
    return-void

    .line 134
    .end local v2    # "sameItem":Z
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "sameItem":Z
    goto :goto_0

    .line 142
    :cond_5
    const-string/jumbo v3, "pref_audio_focus_key"

    iget-object v4, p0, Lcom/android/camera/ui/EffectPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v4}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 143
    iget-object v3, p0, Lcom/android/camera/ui/EffectPopup;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/android/camera/ActivityBase;

    invoke-virtual {v3}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/module/Module;->isVideoRecording()Z

    move-result v3

    .line 142
    if-eqz v3, :cond_2

    .line 144
    iget-object v3, p0, Lcom/android/camera/ui/EffectPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 145
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
    .line 178
    invoke-super {p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->onFinishInflate()V

    .line 179
    const v0, 0x7f0c0028

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/EffectPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/camera/ui/EffectPopup;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 177
    return-void
.end method

.method public reloadPreference()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/EffectPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/EffectPopup;->mCurrentIndex:I

    .line 114
    iget v0, p0, Lcom/android/camera/ui/EffectPopup;->mCurrentIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 116
    invoke-static {}, Lcom/android/camera/Device;->isNeedForceRecycleEffectPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/android/camera/ui/EffectPopup;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->removeAndRecycleAllViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 119
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/EffectPopup;->mCurrentIndex:I

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/EffectPopup;->setItemInCenter(I)V

    .line 120
    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup;->mSelectedOverlay:Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;

    iget v1, p0, Lcom/android/camera/ui/EffectPopup;->mCurrentIndex:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/EffectPopup$EffectSelectedOverlay;->select(I)V

    .line 112
    :goto_0
    return-void

    .line 122
    :cond_1
    const-string/jumbo v0, "EffectPopup"

    const-string/jumbo v1, "Invalid preference value."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->print()V

    goto :goto_0
.end method

.method public requestEffectRender()V
    .locals 4

    .prologue
    .line 202
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/camera/ui/EffectPopup;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v3}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 203
    iget-object v3, p0, Lcom/android/camera/ui/EffectPopup;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 204
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 205
    iget-object v3, p0, Lcom/android/camera/ui/EffectPopup;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;

    .line 206
    .local v0, "holder":Lcom/android/camera/ui/EffectPopup$EffectItemHolder;
    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0}, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;->requestRender()V

    .line 202
    .end local v0    # "holder":Lcom/android/camera/ui/EffectPopup$EffectItemHolder;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 201
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 195
    invoke-super {p0, p1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setEnabled(Z)V

    .line 196
    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/camera/ui/EffectPopup;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setEnabled(Z)V

    .line 194
    :cond_0
    return-void
.end method

.method protected setItemInCenter(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 107
    iget v1, p0, Lcom/android/camera/ui/EffectPopup;->mTotalWidth:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/android/camera/ui/EffectPopup;->mHolderWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int v0, v1, v2

    .line 108
    .local v0, "offset":I
    iget-object v1, p0, Lcom/android/camera/ui/EffectPopup;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1, p1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 106
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 183
    return-void
.end method

.method public show(Z)V
    .locals 2
    .param p1, "animation"    # Z

    .prologue
    .line 169
    invoke-super {p0, p1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->show(Z)V

    .line 170
    const-string/jumbo v0, "pref_camera_scenemode_key"

    iget-object v1, p0, Lcom/android/camera/ui/EffectPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    const-string/jumbo v0, "auto"

    iget-object v1, p0, Lcom/android/camera/ui/EffectPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setFocusModeSwitching(Z)V

    goto :goto_0
.end method

.method public startEffectRender()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 214
    iget-object v5, p0, Lcom/android/camera/ui/EffectPopup;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/android/camera/ActivityBase;

    invoke-virtual {v5}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v2

    .line 215
    .local v2, "screen":Lcom/android/camera/CameraScreenNail;
    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getWidth()I

    move-result v4

    .line 216
    .local v4, "screenWidth":I
    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getHeight()I

    move-result v3

    .line 218
    .local v3, "screenHeight":I
    iput v6, p0, Lcom/android/camera/ui/EffectPopup;->mTextureOffsetX:I

    .line 219
    iput v6, p0, Lcom/android/camera/ui/EffectPopup;->mTextureOffsetY:I

    .line 220
    iget v5, p0, Lcom/android/camera/ui/EffectPopup;->mHolderWidth:I

    iput v5, p0, Lcom/android/camera/ui/EffectPopup;->mTextureWidth:I

    .line 221
    iget v5, p0, Lcom/android/camera/ui/EffectPopup;->mHolderHeight:I

    iput v5, p0, Lcom/android/camera/ui/EffectPopup;->mTextureHeight:I

    .line 224
    iget v5, p0, Lcom/android/camera/ui/EffectPopup;->mHolderWidth:I

    mul-int/2addr v5, v3

    iget v6, p0, Lcom/android/camera/ui/EffectPopup;->mHolderHeight:I

    mul-int/2addr v6, v4

    if-le v5, v6, :cond_0

    .line 227
    iget v5, p0, Lcom/android/camera/ui/EffectPopup;->mHolderWidth:I

    mul-int/2addr v5, v3

    div-int/2addr v5, v4

    iput v5, p0, Lcom/android/camera/ui/EffectPopup;->mTextureHeight:I

    .line 228
    iget v5, p0, Lcom/android/camera/ui/EffectPopup;->mTextureHeight:I

    iget v6, p0, Lcom/android/camera/ui/EffectPopup;->mHolderHeight:I

    sub-int/2addr v5, v6

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/android/camera/ui/EffectPopup;->mTextureOffsetY:I

    .line 236
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

    .line 237
    .local v0, "holder":Lcom/android/camera/ui/EffectPopup$EffectItemHolder;
    invoke-virtual {v0}, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;->start()V

    goto :goto_1

    .line 232
    .end local v0    # "holder":Lcom/android/camera/ui/EffectPopup$EffectItemHolder;
    .end local v1    # "holder$iterator":Ljava/util/Iterator;
    :cond_0
    iget v5, p0, Lcom/android/camera/ui/EffectPopup;->mHolderHeight:I

    mul-int/2addr v5, v4

    div-int/2addr v5, v3

    iput v5, p0, Lcom/android/camera/ui/EffectPopup;->mTextureWidth:I

    .line 233
    iget v5, p0, Lcom/android/camera/ui/EffectPopup;->mTextureWidth:I

    iget v6, p0, Lcom/android/camera/ui/EffectPopup;->mHolderWidth:I

    sub-int/2addr v5, v6

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/android/camera/ui/EffectPopup;->mTextureOffsetX:I

    goto :goto_0

    .line 213
    .restart local v1    # "holder$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public stopEffectRender()V
    .locals 3

    .prologue
    .line 242
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

    .line 243
    .local v0, "holder":Lcom/android/camera/ui/EffectPopup$EffectItemHolder;
    invoke-virtual {v0}, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;->stop()V

    goto :goto_0

    .line 241
    .end local v0    # "holder":Lcom/android/camera/ui/EffectPopup$EffectItemHolder;
    :cond_0
    return-void
.end method

.method public updateBackground()V
    .locals 4

    .prologue
    .line 249
    iget-object v2, p0, Lcom/android/camera/ui/EffectPopup;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/android/camera/ActivityBase;

    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/V6PreviewFrame;->isFullScreen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 250
    iget-object v2, p0, Lcom/android/camera/ui/EffectPopup;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const v3, 0x7f0a0006

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setBackgroundResource(I)V

    .line 254
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

    .line 255
    .local v0, "holder":Lcom/android/camera/ui/EffectPopup$EffectItemHolder;
    invoke-virtual {v0}, Lcom/android/camera/ui/EffectPopup$EffectItemHolder;->updateBackground()V

    goto :goto_1

    .line 252
    .end local v0    # "holder":Lcom/android/camera/ui/EffectPopup$EffectItemHolder;
    .end local v1    # "holder$iterator":Ljava/util/Iterator;
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/EffectPopup;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const v3, 0x7f0a0005

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setBackgroundResource(I)V

    goto :goto_0

    .line 248
    .restart local v1    # "holder$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method
