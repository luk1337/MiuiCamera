.class public Lcom/android/camera/ui/GridSettingPopupWhiteBalance;
.super Lcom/android/camera/ui/GridSettingPopup;
.source "GridSettingPopupWhiteBalance.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/GridSettingPopupWhiteBalance$1;,
        Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter;
    }
.end annotation


# static fields
.field private static sWhiteBalanceManual:Ljava/lang/String;

.field private static sWhiteBalanceMeasure:Ljava/lang/String;


# instance fields
.field private mContentView:Landroid/view/View;

.field private mCurrentKValue:I

.field private mItemHeight:I

.field private mItemWidth:I

.field private mKItemAdapter:Lcom/android/camera/ui/NumericListAdapter;

.field private mListView:Lcom/android/camera/ui/HorizontalListView;

.field private mOnBackListener:Landroid/view/View$OnClickListener;


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/GridSettingPopupWhiteBalance;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mItemHeight:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/camera/ui/GridSettingPopupWhiteBalance;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mItemWidth:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/camera/ui/GridSettingPopupWhiteBalance;)Lcom/android/camera/ui/HorizontalListView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mListView:Lcom/android/camera/ui/HorizontalListView;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/GridSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mCurrentKValue:I

    .line 134
    new-instance v0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$1;-><init>(Lcom/android/camera/ui/GridSettingPopupWhiteBalance;)V

    iput-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mOnBackListener:Landroid/view/View$OnClickListener;

    .line 40
    sget-object v0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->sWhiteBalanceManual:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    sget-object v1, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->sWhiteBalanceManual:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0085

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->sWhiteBalanceManual:Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0086

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->sWhiteBalanceMeasure:Ljava/lang/String;

    .line 38
    :cond_1
    return-void
.end method

.method private notifyToDispatcher(ZZ)V
    .locals 6
    .param p1, "sameItem"    # Z
    .param p2, "scrolling"    # Z

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 163
    const-string/jumbo v4, "pref_qc_manual_whitebalance_k_value_key"

    .line 164
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 160
    const/4 v1, 0x7

    .line 161
    const/4 v2, 0x0

    .line 162
    const/4 v3, 0x3

    .line 159
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V
    .locals 5
    .param p1, "preferenceGroup"    # Lcom/android/camera/preferences/PreferenceGroup;
    .param p2, "preference"    # Lcom/android/camera/preferences/IconListPreference;
    .param p3, "p"    # Lcom/android/camera/ui/MessageDispacher;

    .prologue
    .line 48
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/ui/GridSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V

    .line 50
    new-instance v1, Lcom/android/camera/ui/NumericListAdapter;

    const/16 v2, 0x7d0

    const/16 v3, 0x1f40

    const/16 v4, 0x64

    invoke-direct {v1, v2, v3, v4}, Lcom/android/camera/ui/NumericListAdapter;-><init>(III)V

    iput-object v1, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mKItemAdapter:Lcom/android/camera/ui/NumericListAdapter;

    .line 51
    new-instance v0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter;

    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mKItemAdapter:Lcom/android/camera/ui/NumericListAdapter;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter;-><init>(Lcom/android/camera/ui/GridSettingPopupWhiteBalance;Lcom/android/camera/ui/NumericListAdapter;)V

    .line 52
    .local v0, "listViewAdapter":Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter;
    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mListView:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 53
    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mListView:Lcom/android/camera/ui/HorizontalListView;

    iget v2, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mItemWidth:I

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/HorizontalListView;->setItemWidth(I)V

    .line 47
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 58
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 59
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 60
    .local v9, "index":I
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mGridView:Landroid/widget/GridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v9, v1}, Landroid/widget/GridView;->setItemChecked(IZ)V

    .line 61
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0, v9}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    .line 62
    iget v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mCurrentIndex:I

    if-eq v0, v9, :cond_4

    const/4 v11, 0x1

    .line 63
    .local v11, "notifyChange":Z
    :goto_0
    sget-object v0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->sWhiteBalanceManual:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 64
    invoke-static {}, Lcom/android/camera/CameraSettings;->getKValue()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mCurrentKValue:I

    .line 66
    :try_start_0
    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraManager;->getCameraProxy()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v6

    .line 67
    .local v6, "cameraProxy":Lcom/android/camera/CameraManager$CameraProxy;
    if-eqz v6, :cond_1

    .line 68
    invoke-virtual {v6}, Lcom/android/camera/CameraManager$CameraProxy;->getWBCT()I

    move-result v7

    .line 69
    .local v7, "deviceWB":I
    if-eqz v7, :cond_1

    .line 70
    iput v7, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mCurrentKValue:I

    .line 71
    const-string/jumbo v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " Current WB CCT = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mCurrentKValue:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v6    # "cameraProxy":Lcom/android/camera/CameraManager$CameraProxy;
    .end local v7    # "deviceWB":I
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mKItemAdapter:Lcom/android/camera/ui/NumericListAdapter;

    iget v1, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mCurrentKValue:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/NumericListAdapter;->getItemIndexByValue(Ljava/lang/Object;)I

    move-result v10

    .line 79
    .local v10, "kIndex":I
    const/4 v0, -0x1

    if-eq v10, v0, :cond_2

    .line 80
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mListView:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {v0, v10}, Lcom/android/camera/ui/HorizontalListView;->setSelection(I)V

    .line 81
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mKItemAdapter:Lcom/android/camera/ui/NumericListAdapter;

    invoke-virtual {v0, v10}, Lcom/android/camera/ui/NumericListAdapter;->getItemValue(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mCurrentKValue:I

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mListView:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/HorizontalListView;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mGridView:Landroid/widget/GridView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 85
    iget v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mCurrentKValue:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setKValue(I)V

    .line 86
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string/jumbo v1, "manual_whitebalance_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 98
    .end local v10    # "kIndex":I
    :goto_2
    if-eqz v11, :cond_3

    .line 99
    iput v9, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mCurrentIndex:I

    .line 101
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_3

    .line 102
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 106
    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 103
    const/4 v1, 0x6

    .line 105
    const/4 v3, 0x3

    move-object v5, p0

    .line 102
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 110
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 57
    return-void

    .line 62
    .end local v11    # "notifyChange":Z
    :cond_4
    const/4 v11, 0x0

    .restart local v11    # "notifyChange":Z
    goto/16 :goto_0

    .line 74
    :catch_0
    move-exception v8

    .line 75
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "Camera"

    const-string/jumbo v1, "Can\'t get current WB CCT"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 87
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_5
    sget-object v0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->sWhiteBalanceMeasure:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 88
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mListView:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/HorizontalListView;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 90
    iput v9, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mCurrentIndex:I

    .line 92
    return-void

    .line 94
    :cond_6
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mListView:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/HorizontalListView;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    goto :goto_2
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 115
    invoke-super {p0}, Lcom/android/camera/ui/GridSettingPopup;->onFinishInflate()V

    .line 116
    const v0, 0x7f0c0037

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/HorizontalListView;

    iput-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mListView:Lcom/android/camera/ui/HorizontalListView;

    .line 117
    invoke-virtual {p0}, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mItemWidth:I

    .line 118
    invoke-virtual {p0}, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mItemHeight:I

    .line 119
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mListView:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/HorizontalListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 121
    const v0, 0x7f0c0034

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mContentView:Landroid/view/View;

    .line 122
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mContentView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mOnBackListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mKItemAdapter:Lcom/android/camera/ui/NumericListAdapter;

    invoke-virtual {v2, p3}, Lcom/android/camera/ui/NumericListAdapter;->getItemValue(I)I

    move-result v0

    .line 149
    .local v0, "newKValue":I
    iget v2, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mCurrentKValue:I

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    .line 150
    .local v1, "sameItem":Z
    :goto_0
    iput v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mCurrentKValue:I

    .line 151
    iget v2, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mCurrentKValue:I

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->setKValue(I)V

    .line 152
    iget-object v2, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mListView:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {v2}, Lcom/android/camera/ui/HorizontalListView;->isScrolling()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->notifyToDispatcher(ZZ)V

    .line 153
    iget-object v2, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mListView:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {v2, p3}, Lcom/android/camera/ui/HorizontalListView;->setSelection(I)V

    .line 154
    iget-object v2, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 146
    return-void

    .line 149
    .end local v1    # "sameItem":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "sameItem":Z
    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 169
    invoke-super {p0, p1}, Lcom/android/camera/ui/GridSettingPopup;->setEnabled(Z)V

    .line 170
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mListView:Lcom/android/camera/ui/HorizontalListView;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mListView:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/HorizontalListView;->setEnabled(Z)V

    .line 168
    :cond_0
    return-void
.end method

.method public show(Z)V
    .locals 3
    .param p1, "animate"    # Z

    .prologue
    const/4 v2, 0x0

    .line 127
    invoke-super {p0, p1}, Lcom/android/camera/ui/GridSettingPopup;->show(Z)V

    .line 128
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mListView:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {v0}, Lcom/android/camera/ui/HorizontalListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mListView:Lcom/android/camera/ui/HorizontalListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/HorizontalListView;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 126
    :cond_0
    return-void
.end method
