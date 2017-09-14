.class public Lcom/android/camera/ui/StereoPopup;
.super Lcom/android/camera/ui/V6AbstractSettingPopup;
.source "StereoPopup.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/StereoPopup$AnimationListener;,
        Lcom/android/camera/ui/StereoPopup$HorizontalListViewAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCurrentIndex:I

.field private mHidenAnimation:Landroid/view/animation/Animation;

.field private mItemHeight:I

.field private mItemWidth:I

.field private mListView:Lcom/android/camera/ui/HorizontalListView;

.field private mShownAnimation:Landroid/view/animation/Animation;


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/StereoPopup;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/StereoPopup;->mHidenAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/camera/ui/StereoPopup;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/StereoPopup;->mItemHeight:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/camera/ui/StereoPopup;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/StereoPopup;->mItemWidth:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/camera/ui/StereoPopup;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/StereoPopup;->mShownAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/android/camera/ui/StereoPopup;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/StereoPopup;->TAG:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/StereoPopup;->mCurrentIndex:I

    .line 32
    return-void
.end method

.method private initAnimation(Z)Landroid/view/animation/Animation;
    .locals 3
    .param p1, "slideUp"    # Z

    .prologue
    .line 119
    if-eqz p1, :cond_1

    .line 120
    iget-object v0, p0, Lcom/android/camera/ui/StereoPopup;->mShownAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/camera/ui/StereoPopup;->mContext:Landroid/content/Context;

    const v1, 0x7f050012

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/StereoPopup;->mShownAnimation:Landroid/view/animation/Animation;

    .line 122
    iget-object v0, p0, Lcom/android/camera/ui/StereoPopup;->mShownAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/camera/ui/StereoPopup$AnimationListener;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p0, v2}, Lcom/android/camera/ui/StereoPopup$AnimationListener;-><init>(Lcom/android/camera/ui/StereoPopup;Landroid/view/View;Z)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/StereoPopup;->mShownAnimation:Landroid/view/animation/Animation;

    return-object v0

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/StereoPopup;->mHidenAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_2

    .line 127
    iget-object v0, p0, Lcom/android/camera/ui/StereoPopup;->mContext:Landroid/content/Context;

    const v1, 0x7f050011

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/StereoPopup;->mHidenAnimation:Landroid/view/animation/Animation;

    .line 128
    iget-object v0, p0, Lcom/android/camera/ui/StereoPopup;->mHidenAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/camera/ui/StereoPopup$AnimationListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p0, v2}, Lcom/android/camera/ui/StereoPopup$AnimationListener;-><init>(Lcom/android/camera/ui/StereoPopup;Landroid/view/View;Z)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/StereoPopup;->mHidenAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private notifyToDispatcher(ZZ)V
    .locals 6
    .param p1, "sameItem"    # Z
    .param p2, "scrolling"    # Z

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/camera/ui/StereoPopup;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/StereoPopup;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 75
    iget-object v1, p0, Lcom/android/camera/ui/StereoPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 76
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 72
    const/4 v1, 0x7

    .line 73
    const/4 v2, 0x0

    .line 74
    const/4 v3, 0x2

    .line 71
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 77
    invoke-virtual {p0}, Lcom/android/camera/ui/StereoPopup;->reloadPreference()V

    goto :goto_0
.end method


# virtual methods
.method public dismiss(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/android/camera/ui/StereoPopup;->clearAnimation()V

    .line 111
    if-eqz p1, :cond_0

    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/StereoPopup;->initAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/StereoPopup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 109
    :goto_0
    return-void

    .line 114
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/StereoPopup;->setVisibility(I)V

    goto :goto_0
.end method

.method public initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V
    .locals 3
    .param p1, "preferenceGroup"    # Lcom/android/camera/preferences/PreferenceGroup;
    .param p2, "preference"    # Lcom/android/camera/preferences/IconListPreference;
    .param p3, "p"    # Lcom/android/camera/ui/MessageDispacher;

    .prologue
    .line 38
    const-string/jumbo v1, "pref_camera_stereo_key"

    invoke-virtual {p1, v1}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object p2

    .end local p2    # "preference":Lcom/android/camera/preferences/IconListPreference;
    check-cast p2, Lcom/android/camera/preferences/IconListPreference;

    .line 39
    .restart local p2    # "preference":Lcom/android/camera/preferences/IconListPreference;
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/ui/V6AbstractSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V

    .line 40
    iget-object v1, p0, Lcom/android/camera/ui/StereoPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->filterValue()V

    .line 42
    new-instance v0, Lcom/android/camera/ui/StereoPopup$HorizontalListViewAdapter;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/StereoPopup$HorizontalListViewAdapter;-><init>(Lcom/android/camera/ui/StereoPopup;)V

    .line 43
    .local v0, "listViewAdapter":Lcom/android/camera/ui/StereoPopup$HorizontalListViewAdapter;
    iget-object v1, p0, Lcom/android/camera/ui/StereoPopup;->mListView:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 44
    iget-object v1, p0, Lcom/android/camera/ui/StereoPopup;->mListView:Lcom/android/camera/ui/HorizontalListView;

    iget v2, p0, Lcom/android/camera/ui/StereoPopup;->mItemWidth:I

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/HorizontalListView;->setItemWidth(I)V

    .line 45
    invoke-virtual {p0}, Lcom/android/camera/ui/StereoPopup;->reloadPreference()V

    .line 37
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 50
    invoke-super {p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->onFinishInflate()V

    .line 51
    const v0, 0x7f0c0037

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/StereoPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/HorizontalListView;

    iput-object v0, p0, Lcom/android/camera/ui/StereoPopup;->mListView:Lcom/android/camera/ui/HorizontalListView;

    .line 52
    invoke-virtual {p0}, Lcom/android/camera/ui/StereoPopup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/StereoPopup;->mItemWidth:I

    .line 53
    invoke-virtual {p0}, Lcom/android/camera/ui/StereoPopup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/StereoPopup;->mItemHeight:I

    .line 54
    iget-object v0, p0, Lcom/android/camera/ui/StereoPopup;->mListView:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/HorizontalListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 49
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
    .line 87
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget v1, p0, Lcom/android/camera/ui/StereoPopup;->mCurrentIndex:I

    if-ne v1, p3, :cond_0

    const/4 v0, 0x1

    .line 88
    .local v0, "sameItem":Z
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/StereoPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1, p3}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    .line 89
    iput p3, p0, Lcom/android/camera/ui/StereoPopup;->mCurrentIndex:I

    .line 90
    iget-object v1, p0, Lcom/android/camera/ui/StereoPopup;->mListView:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {v1}, Lcom/android/camera/ui/HorizontalListView;->isScrolling()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/StereoPopup;->notifyToDispatcher(ZZ)V

    .line 86
    return-void

    .line 87
    .end local v0    # "sameItem":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "sameItem":Z
    goto :goto_0
.end method

.method public reloadPreference()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/camera/ui/StereoPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/StereoPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/StereoPopup;->mCurrentIndex:I

    .line 61
    iget v0, p0, Lcom/android/camera/ui/StereoPopup;->mCurrentIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/camera/ui/StereoPopup;->mListView:Lcom/android/camera/ui/HorizontalListView;

    iget v1, p0, Lcom/android/camera/ui/StereoPopup;->mCurrentIndex:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/HorizontalListView;->setSelection(I)V

    .line 58
    :goto_0
    return-void

    .line 64
    :cond_0
    sget-object v0, Lcom/android/camera/ui/StereoPopup;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Invalid preference value."

    invoke-static {v0, v1}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lcom/android/camera/ui/StereoPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->print()V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setEnabled(Z)V

    .line 98
    iget-object v0, p0, Lcom/android/camera/ui/StereoPopup;->mListView:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/HorizontalListView;->setEnabled(Z)V

    .line 96
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 94
    return-void
.end method

.method public show(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/android/camera/ui/StereoPopup;->clearAnimation()V

    .line 103
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/StereoPopup;->setVisibility(I)V

    .line 104
    if-eqz p1, :cond_0

    .line 105
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/ui/StereoPopup;->initAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/StereoPopup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 101
    :cond_0
    return-void
.end method
