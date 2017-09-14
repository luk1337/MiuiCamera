.class public abstract Lcom/android/camera/ui/SettingView;
.super Landroid/widget/RelativeLayout;
.source "SettingView.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;


# instance fields
.field protected mIndicators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ui/V6AbstractIndicator;",
            ">;"
        }
    .end annotation
.end field

.field protected mIsAnimating:Z

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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/android/camera/ui/SettingView;->mIndicators:Ljava/util/ArrayList;

    .line 19
    iput v1, p0, Lcom/android/camera/ui/SettingView;->mOrientation:I

    .line 20
    iput-boolean v1, p0, Lcom/android/camera/ui/SettingView;->mIsAnimating:Z

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/SettingView;->mRotatables:Ljava/util/ArrayList;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/android/camera/ui/SettingView;->mIndicators:Ljava/util/ArrayList;

    .line 19
    iput v1, p0, Lcom/android/camera/ui/SettingView;->mOrientation:I

    .line 20
    iput-boolean v1, p0, Lcom/android/camera/ui/SettingView;->mIsAnimating:Z

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/SettingView;->mRotatables:Ljava/util/ArrayList;

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/android/camera/ui/SettingView;->mIndicators:Ljava/util/ArrayList;

    .line 19
    iput v1, p0, Lcom/android/camera/ui/SettingView;->mOrientation:I

    .line 20
    iput-boolean v1, p0, Lcom/android/camera/ui/SettingView;->mIsAnimating:Z

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/SettingView;->mRotatables:Ljava/util/ArrayList;

    .line 31
    return-void
.end method


# virtual methods
.method public abstract initializeSettingScreen(Lcom/android/camera/preferences/PreferenceGroup;Ljava/util/List;ILcom/android/camera/ui/MessageDispacher;Landroid/view/ViewGroup;Lcom/android/camera/ui/V6AbstractSettingPopup;)V
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
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/ui/SettingView;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/SettingView;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 56
    return-void
.end method

.method public onDismiss()V
    .locals 3

    .prologue
    .line 51
    iget-object v2, p0, Lcom/android/camera/ui/SettingView;->mIndicators:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ind$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6AbstractIndicator;

    .line 52
    .local v0, "ind":Lcom/android/camera/ui/V6AbstractIndicator;
    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractIndicator;->onDismiss()V

    goto :goto_0

    .line 50
    .end local v0    # "ind":Lcom/android/camera/ui/V6AbstractIndicator;
    :cond_0
    return-void
.end method

.method public reloadPreferences()V
    .locals 3

    .prologue
    .line 36
    iget-object v2, p0, Lcom/android/camera/ui/SettingView;->mIndicators:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "b$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6AbstractIndicator;

    .line 37
    .local v0, "b":Lcom/android/camera/ui/V6AbstractIndicator;
    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractIndicator;->reloadPreference()V

    goto :goto_0

    .line 35
    .end local v0    # "b":Lcom/android/camera/ui/V6AbstractIndicator;
    :cond_0
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 62
    return-void
.end method

.method public setPressed(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "pressed"    # Z

    .prologue
    .line 42
    iget-object v2, p0, Lcom/android/camera/ui/SettingView;->mIndicators:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "b$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6AbstractIndicator;

    .line 43
    .local v0, "b":Lcom/android/camera/ui/V6AbstractIndicator;
    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractIndicator;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    invoke-virtual {v0, p2}, Lcom/android/camera/ui/V6AbstractIndicator;->setPressed(Z)V

    .line 45
    return-void

    .line 41
    .end local v0    # "b":Lcom/android/camera/ui/V6AbstractIndicator;
    :cond_1
    return-void
.end method
