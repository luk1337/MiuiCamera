.class public abstract Lcom/android/camera/ui/V6AbstractSettingPopup;
.super Landroid/widget/RelativeLayout;
.source "V6AbstractSettingPopup.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;


# instance fields
.field protected mDisableKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

.field protected mPreference:Lcom/android/camera/preferences/IconListPreference;

.field protected mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method


# virtual methods
.method public dismiss(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 48
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setVisibility(I)V

    .line 47
    return-void
.end method

.method public getAnimation(Z)Landroid/view/animation/Animation;
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 69
    :cond_0
    return-object v1
.end method

.method public initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V
    .locals 0
    .param p1, "preferenceGroup"    # Lcom/android/camera/preferences/PreferenceGroup;
    .param p2, "preference"    # Lcom/android/camera/preferences/IconListPreference;
    .param p3, "p"    # Lcom/android/camera/ui/MessageDispacher;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    .line 25
    iput-object p2, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 26
    iput-object p3, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 27
    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->updateBackground()V

    .line 23
    return-void
.end method

.method protected notifyPopupVisibleChange(Z)V
    .locals 6
    .param p1, "visible"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x3

    .line 77
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 82
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 80
    const/4 v2, 0x0

    move v3, v1

    .line 78
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 36
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 35
    return-void
.end method

.method public abstract reloadPreference()V
.end method

.method public show(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setVisibility(I)V

    .line 43
    return-void
.end method

.method public updateBackground()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewFrame;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    const v0, 0x7f0c0005

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setBackgroundResource(I)V

    .line 51
    :goto_0
    return-void

    .line 55
    :cond_0
    const v0, 0x7f0c0004

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setBackgroundResource(I)V

    goto :goto_0
.end method
