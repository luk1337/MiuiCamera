.class public Lcom/android/camera/ui/ManualISOPopup;
.super Lcom/android/camera/ui/V6AbstractSettingPopup;
.source "ManualISOPopup.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/ManualISOPopup$HorizontalListViewAdapter;
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
.method static synthetic -get0(Lcom/android/camera/ui/ManualISOPopup;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/ManualISOPopup;->mItemHeight:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/camera/ui/ManualISOPopup;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/ManualISOPopup;->mItemWidth:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/android/camera/ui/ManualISOPopup;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/ManualISOPopup;->TAG:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/ManualISOPopup;->mCurrentIndex:I

    .line 33
    return-void
.end method

.method private notifyToDispatcher(ZZ)V
    .locals 6
    .param p1, "sameItem"    # Z
    .param p2, "scrolling"    # Z

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/camera/ui/ManualISOPopup;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/ManualISOPopup;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 82
    iget-object v1, p0, Lcom/android/camera/ui/ManualISOPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 83
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 79
    const/4 v1, 0x7

    .line 80
    const/4 v2, 0x0

    .line 81
    const/4 v3, 0x2

    .line 78
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
    .line 39
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/ui/V6AbstractSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V

    .line 40
    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraManager;->getStashParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 41
    .local v2, "param":Landroid/hardware/Camera$Parameters;
    invoke-static {}, Lcom/android/camera/Device;->isNvPlatform()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    .line 42
    invoke-static {}, Lcom/android/camera/hardware/CameraHardwareProxy;->getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->getSupportedIsoValues(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    .line 43
    .local v0, "isoValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 44
    iget-object v3, p0, Lcom/android/camera/ui/ManualISOPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3, v0}, Lcom/android/camera/preferences/IconListPreference;->filterUnsupported(Ljava/util/List;)V

    .line 47
    .end local v0    # "isoValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    iget-object v3, p0, Lcom/android/camera/ui/ManualISOPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/preferences/IconListPreference;->filterValue()V

    .line 49
    new-instance v1, Lcom/android/camera/ui/ManualISOPopup$HorizontalListViewAdapter;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/ManualISOPopup$HorizontalListViewAdapter;-><init>(Lcom/android/camera/ui/ManualISOPopup;)V

    .line 50
    .local v1, "listViewAdapter":Lcom/android/camera/ui/ManualISOPopup$HorizontalListViewAdapter;
    iget-object v3, p0, Lcom/android/camera/ui/ManualISOPopup;->mListView:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {v3, v1}, Lcom/android/camera/ui/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 51
    iget-object v3, p0, Lcom/android/camera/ui/ManualISOPopup;->mListView:Lcom/android/camera/ui/HorizontalListView;

    iget v4, p0, Lcom/android/camera/ui/ManualISOPopup;->mItemWidth:I

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/HorizontalListView;->setItemWidth(I)V

    .line 52
    invoke-virtual {p0}, Lcom/android/camera/ui/ManualISOPopup;->reloadPreference()V

    .line 38
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 57
    invoke-super {p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->onFinishInflate()V

    .line 58
    const v0, 0x7f090039

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ManualISOPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/HorizontalListView;

    iput-object v0, p0, Lcom/android/camera/ui/ManualISOPopup;->mListView:Lcom/android/camera/ui/HorizontalListView;

    .line 59
    invoke-virtual {p0}, Lcom/android/camera/ui/ManualISOPopup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ManualISOPopup;->mItemWidth:I

    .line 60
    invoke-virtual {p0}, Lcom/android/camera/ui/ManualISOPopup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ManualISOPopup;->mItemHeight:I

    .line 61
    iget-object v0, p0, Lcom/android/camera/ui/ManualISOPopup;->mListView:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/HorizontalListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 56
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
    .line 93
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget v1, p0, Lcom/android/camera/ui/ManualISOPopup;->mCurrentIndex:I

    if-ne v1, p3, :cond_0

    const/4 v0, 0x1

    .line 94
    .local v0, "sameItem":Z
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/ManualISOPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1, p3}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    .line 95
    iput p3, p0, Lcom/android/camera/ui/ManualISOPopup;->mCurrentIndex:I

    .line 96
    iget-object v1, p0, Lcom/android/camera/ui/ManualISOPopup;->mListView:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {v1}, Lcom/android/camera/ui/HorizontalListView;->isScrolling()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/ManualISOPopup;->notifyToDispatcher(ZZ)V

    .line 92
    return-void

    .line 93
    .end local v0    # "sameItem":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "sameItem":Z
    goto :goto_0
.end method

.method public reloadPreference()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/camera/ui/ManualISOPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/ManualISOPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ManualISOPopup;->mCurrentIndex:I

    .line 68
    iget v0, p0, Lcom/android/camera/ui/ManualISOPopup;->mCurrentIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/camera/ui/ManualISOPopup;->mListView:Lcom/android/camera/ui/HorizontalListView;

    iget v1, p0, Lcom/android/camera/ui/ManualISOPopup;->mCurrentIndex:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/HorizontalListView;->setSelection(I)V

    .line 65
    :goto_0
    return-void

    .line 71
    :cond_0
    sget-object v0, Lcom/android/camera/ui/ManualISOPopup;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Invalid preference value."

    invoke-static {v0, v1}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lcom/android/camera/ui/ManualISOPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->print()V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setEnabled(Z)V

    .line 104
    iget-object v0, p0, Lcom/android/camera/ui/ManualISOPopup;->mListView:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/HorizontalListView;->setEnabled(Z)V

    .line 102
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 100
    return-void
.end method
