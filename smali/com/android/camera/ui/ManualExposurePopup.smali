.class public Lcom/android/camera/ui/ManualExposurePopup;
.super Lcom/android/camera/ui/V6AbstractSettingPopup;
.source "ManualExposurePopup.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/ManualExposurePopup$HorizontalListViewAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCurrentIndex:I

.field private mItemHeight:I

.field private mItemWidth:I

.field private mListView:Lcom/android/camera/ui/HorizontalListView;


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/ManualExposurePopup;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/ManualExposurePopup;->mItemHeight:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/camera/ui/ManualExposurePopup;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/ManualExposurePopup;->mItemWidth:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/android/camera/ui/ManualExposurePopup;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/ManualExposurePopup;->TAG:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/ManualExposurePopup;->mCurrentIndex:I

    .line 31
    return-void
.end method

.method private filterPreference(Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "entryValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 58
    iget-object v6, p0, Lcom/android/camera/ui/ManualExposurePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a004c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 60
    .local v4, "preferenceEntries":[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/camera/ui/ManualExposurePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a004d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 62
    .local v5, "preferenceEntryValues":[Ljava/lang/String;
    sget-boolean v6, Lcom/android/camera/Device;->IS_MI4:Z

    if-eqz v6, :cond_1

    const v2, 0x1e8480

    .line 63
    .local v2, "maxExposure":I
    :goto_0
    iget-object v6, p0, Lcom/android/camera/ui/ManualExposurePopup;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/camera/CameraSettings;->getMinExposureTimes(Landroid/content/Context;)I

    move-result v3

    .line 65
    .local v3, "minExposure":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v6, v5

    if-ge v1, v6, :cond_3

    .line 66
    aget-object v6, v5, v1

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 67
    .local v0, "entryValue":I
    if-gt v3, v0, :cond_2

    if-gt v0, v2, :cond_2

    .line 69
    :goto_2
    aget-object v6, v4, v1

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    aget-object v6, v5, v1

    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 62
    .end local v0    # "entryValue":I
    .end local v1    # "i":I
    .end local v2    # "maxExposure":I
    .end local v3    # "minExposure":I
    :cond_1
    iget-object v6, p0, Lcom/android/camera/ui/ManualExposurePopup;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/camera/CameraSettings;->getMaxExposureTimes(Landroid/content/Context;)I

    move-result v2

    .restart local v2    # "maxExposure":I
    goto :goto_0

    .line 68
    .restart local v0    # "entryValue":I
    .restart local v1    # "i":I
    .restart local v3    # "minExposure":I
    :cond_2
    if-nez v1, :cond_0

    iget-object v6, p0, Lcom/android/camera/ui/ManualExposurePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e013a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aget-object v7, v5, v8

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 67
    if-eqz v6, :cond_0

    goto :goto_2

    .line 56
    .end local v0    # "entryValue":I
    :cond_3
    return-void
.end method

.method private notifyToDispatcher(ZZ)V
    .locals 6
    .param p1, "sameItem"    # Z
    .param p2, "scrolling"    # Z

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/camera/ui/ManualExposurePopup;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/ManualExposurePopup;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 102
    iget-object v1, p0, Lcom/android/camera/ui/ManualExposurePopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 103
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 99
    const/4 v1, 0x7

    .line 100
    const/4 v2, 0x0

    .line 101
    const/4 v3, 0x2

    .line 98
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
    .line 37
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/ui/V6AbstractSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V

    .line 40
    sget-boolean v3, Lcom/android/camera/Device;->IS_XIAOMI:Z

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v1, "entryValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/ManualExposurePopup;->filterPreference(Ljava/util/List;Ljava/util/List;)V

    .line 44
    iget-object v4, p0, Lcom/android/camera/ui/ManualExposurePopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v3}, Lcom/android/camera/preferences/IconListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 45
    iget-object v4, p0, Lcom/android/camera/ui/ManualExposurePopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v3}, Lcom/android/camera/preferences/IconListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 47
    .end local v0    # "entries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "entryValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    iget-object v3, p0, Lcom/android/camera/ui/ManualExposurePopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/preferences/IconListPreference;->filterValue()V

    .line 49
    new-instance v2, Lcom/android/camera/ui/ManualExposurePopup$HorizontalListViewAdapter;

    invoke-direct {v2, p0}, Lcom/android/camera/ui/ManualExposurePopup$HorizontalListViewAdapter;-><init>(Lcom/android/camera/ui/ManualExposurePopup;)V

    .line 50
    .local v2, "listViewAdapter":Lcom/android/camera/ui/ManualExposurePopup$HorizontalListViewAdapter;
    iget-object v3, p0, Lcom/android/camera/ui/ManualExposurePopup;->mListView:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {v3, v2}, Lcom/android/camera/ui/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 51
    iget-object v3, p0, Lcom/android/camera/ui/ManualExposurePopup;->mListView:Lcom/android/camera/ui/HorizontalListView;

    iget v4, p0, Lcom/android/camera/ui/ManualExposurePopup;->mItemWidth:I

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/HorizontalListView;->setItemWidth(I)V

    .line 53
    invoke-virtual {p0}, Lcom/android/camera/ui/ManualExposurePopup;->reloadPreference()V

    .line 36
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 77
    invoke-super {p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->onFinishInflate()V

    .line 78
    const v0, 0x7f090039

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ManualExposurePopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/HorizontalListView;

    iput-object v0, p0, Lcom/android/camera/ui/ManualExposurePopup;->mListView:Lcom/android/camera/ui/HorizontalListView;

    .line 79
    invoke-virtual {p0}, Lcom/android/camera/ui/ManualExposurePopup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ManualExposurePopup;->mItemWidth:I

    .line 80
    invoke-virtual {p0}, Lcom/android/camera/ui/ManualExposurePopup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ManualExposurePopup;->mItemHeight:I

    .line 81
    iget-object v0, p0, Lcom/android/camera/ui/ManualExposurePopup;->mListView:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/HorizontalListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 76
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 121
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget v1, p0, Lcom/android/camera/ui/ManualExposurePopup;->mCurrentIndex:I

    if-ne v1, p3, :cond_0

    const/4 v0, 0x1

    .line 122
    .local v0, "sameItem":Z
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/ManualExposurePopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1, p3}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    .line 123
    iput p3, p0, Lcom/android/camera/ui/ManualExposurePopup;->mCurrentIndex:I

    .line 124
    iget-object v1, p0, Lcom/android/camera/ui/ManualExposurePopup;->mListView:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {v1}, Lcom/android/camera/ui/HorizontalListView;->isScrolling()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/ManualExposurePopup;->notifyToDispatcher(ZZ)V

    .line 120
    return-void

    .line 121
    .end local v0    # "sameItem":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "sameItem":Z
    goto :goto_0
.end method

.method public reloadPreference()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/ui/ManualExposurePopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/ManualExposurePopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ManualExposurePopup;->mCurrentIndex:I

    .line 88
    iget v0, p0, Lcom/android/camera/ui/ManualExposurePopup;->mCurrentIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/camera/ui/ManualExposurePopup;->mListView:Lcom/android/camera/ui/HorizontalListView;

    iget v1, p0, Lcom/android/camera/ui/ManualExposurePopup;->mCurrentIndex:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/HorizontalListView;->setSelection(I)V

    .line 85
    :goto_0
    return-void

    .line 91
    :cond_0
    sget-object v0, Lcom/android/camera/ui/ManualExposurePopup;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Invalid preference value."

    invoke-static {v0, v1}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/android/camera/ui/ManualExposurePopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->print()V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setEnabled(Z)V

    .line 116
    iget-object v0, p0, Lcom/android/camera/ui/ManualExposurePopup;->mListView:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/HorizontalListView;->setEnabled(Z)V

    .line 114
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
