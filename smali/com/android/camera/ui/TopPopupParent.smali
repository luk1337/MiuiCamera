.class public Lcom/android/camera/ui/TopPopupParent;
.super Landroid/widget/FrameLayout;
.source "TopPopupParent.java"

# interfaces
.implements Lcom/android/camera/ui/V6FunctionUI;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    return-void
.end method

.method private dismissPopupExcept(Landroid/view/View;Z)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    .line 34
    const/4 v1, 0x0

    .line 35
    .local v1, "v":Landroid/view/View;
    const/4 v0, 0x0

    .end local v1    # "v":Landroid/view/View;
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/TopPopupParent;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 36
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/TopPopupParent;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 37
    .local v1, "v":Landroid/view/View;
    if-eq p1, v1, :cond_0

    .line 38
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 39
    instance-of v2, v1, Lcom/android/camera/ui/V6AbstractSettingPopup;

    .line 37
    if-eqz v2, :cond_0

    move-object v2, v1

    .line 40
    check-cast v2, Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {p0, v2, p2}, Lcom/android/camera/ui/TopPopupParent;->dismissPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;Z)V

    .line 35
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 33
    .end local v1    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method


# virtual methods
.method public dismissAllPopup(Z)V
    .locals 3
    .param p1, "animate"    # Z

    .prologue
    .line 23
    const/4 v1, 0x0

    .line 24
    .local v1, "v":Landroid/view/View;
    const/4 v0, 0x0

    .end local v1    # "v":Landroid/view/View;
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/TopPopupParent;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 25
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/TopPopupParent;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 26
    .local v1, "v":Landroid/view/View;
    instance-of v2, v1, Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v2, :cond_0

    .line 27
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    .line 28
    check-cast v2, Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {p0, v2, p1}, Lcom/android/camera/ui/TopPopupParent;->dismissPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;Z)V

    .line 24
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 22
    .end local v1    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public dismissAllPopupExceptSkinBeauty(Z)V
    .locals 5
    .param p1, "animate"    # Z

    .prologue
    .line 46
    const/4 v2, 0x0

    .line 47
    .local v2, "v":Landroid/view/View;
    const/4 v0, 0x0

    .end local v2    # "v":Landroid/view/View;
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/TopPopupParent;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 48
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/TopPopupParent;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 49
    .local v2, "v":Landroid/view/View;
    instance-of v3, v2, Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v3, :cond_0

    .line 50
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    move-object v1, v2

    .line 51
    check-cast v1, Lcom/android/camera/ui/V6AbstractSettingPopup;

    .line 52
    .local v1, "popup":Lcom/android/camera/ui/V6AbstractSettingPopup;
    const-string/jumbo v3, "pref_camera_face_beauty_switch_key"

    invoke-virtual {v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 53
    invoke-virtual {p0, v1, p1}, Lcom/android/camera/ui/TopPopupParent;->dismissPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;Z)V

    .line 47
    .end local v1    # "popup":Lcom/android/camera/ui/V6AbstractSettingPopup;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public dismissPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;Z)V
    .locals 0
    .param p1, "mPopup"    # Lcom/android/camera/ui/V6AbstractSettingPopup;
    .param p2, "animate"    # Z

    .prologue
    .line 60
    invoke-virtual {p1, p2}, Lcom/android/camera/ui/V6AbstractSettingPopup;->dismiss(Z)V

    .line 59
    return-void
.end method

.method public enableControls(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 89
    return-void
.end method

.method public onCameraOpen()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/TopPopupParent;->dismissAllPopup(Z)V

    .line 74
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/TopPopupParent;->dismissAllPopup(Z)V

    .line 84
    return-void
.end method

.method public onPreviewPageShown(Z)V
    .locals 1
    .param p1, "shown"    # Z

    .prologue
    .line 17
    if-nez p1, :cond_0

    .line 18
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/TopPopupParent;->dismissAllPopup(Z)V

    .line 16
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .locals 0
    .param p1, "p"    # Lcom/android/camera/ui/MessageDispacher;

    .prologue
    .line 100
    return-void
.end method

.method public showPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;Z)V
    .locals 0
    .param p1, "mPopup"    # Lcom/android/camera/ui/V6AbstractSettingPopup;
    .param p2, "animate"    # Z

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/TopPopupParent;->dismissPopupExcept(Landroid/view/View;Z)V

    .line 65
    invoke-virtual {p1, p2}, Lcom/android/camera/ui/V6AbstractSettingPopup;->show(Z)V

    .line 63
    return-void
.end method
