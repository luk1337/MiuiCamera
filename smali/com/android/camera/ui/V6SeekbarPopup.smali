.class public Lcom/android/camera/ui/V6SeekbarPopup;
.super Lcom/android/camera/ui/V6AbstractSettingPopup;
.source "V6SeekbarPopup.java"

# interfaces
.implements Lcom/android/camera/ui/V6SeekBar$OnValueChangedListener;


# instance fields
.field private mBar:Lcom/android/camera/ui/V6SeekBar;

.field private mTexts:Lcom/android/camera/ui/V6SeekbarPopupTexts;

.field private mValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method private filterPreference(Lcom/android/camera/preferences/IconListPreference;)V
    .locals 6
    .param p1, "preference"    # Lcom/android/camera/preferences/IconListPreference;

    .prologue
    .line 87
    if-eqz p1, :cond_2

    .line 88
    const-string/jumbo v2, "pref_delay_capture_key"

    invoke-virtual {p1}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 87
    if-eqz v2, :cond_2

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 90
    .local v0, "supported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v3, v2

    .line 91
    .local v1, "value":Ljava/lang/CharSequence;
    const-string/jumbo v5, "0"

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 92
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 95
    .end local v1    # "value":Ljava/lang/CharSequence;
    :cond_1
    invoke-virtual {p1, v0}, Lcom/android/camera/preferences/IconListPreference;->filterUnsupported(Ljava/util/List;)V

    .line 86
    .end local v0    # "supported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    return-void
.end method


# virtual methods
.method public initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V
    .locals 2
    .param p1, "preferenceGroup"    # Lcom/android/camera/preferences/PreferenceGroup;
    .param p2, "preference"    # Lcom/android/camera/preferences/IconListPreference;
    .param p3, "p"    # Lcom/android/camera/ui/MessageDispacher;

    .prologue
    .line 40
    const-string/jumbo v0, "pref_camera_face_beauty_mode_key"

    invoke-virtual {p2}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    const-string/jumbo v0, "pref_camera_face_beauty_key"

    invoke-virtual {p1, v0}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object p2

    .end local p2    # "preference":Lcom/android/camera/preferences/IconListPreference;
    check-cast p2, Lcom/android/camera/preferences/IconListPreference;

    .line 47
    .restart local p2    # "preference":Lcom/android/camera/preferences/IconListPreference;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/ui/V6AbstractSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V

    .line 48
    iget-object v0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mValue:I

    .line 49
    iget-object v0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mTexts:Lcom/android/camera/ui/V6SeekbarPopupTexts;

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/V6SeekbarPopupTexts;->initialize(Lcom/android/camera/preferences/IconListPreference;)V

    .line 50
    iget-object v0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mBar:Lcom/android/camera/ui/V6SeekBar;

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/V6SeekBar;->initialize(Lcom/android/camera/preferences/IconListPreference;)V

    .line 39
    return-void

    .line 42
    :cond_1
    const-string/jumbo v0, "pref_delay_capture_mode"

    invoke-virtual {p2}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    const-string/jumbo v0, "pref_delay_capture_key"

    invoke-virtual {p1, v0}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object p2

    .end local p2    # "preference":Lcom/android/camera/preferences/IconListPreference;
    check-cast p2, Lcom/android/camera/preferences/IconListPreference;

    .line 44
    .restart local p2    # "preference":Lcom/android/camera/preferences/IconListPreference;
    invoke-direct {p0, p2}, Lcom/android/camera/ui/V6SeekbarPopup;->filterPreference(Lcom/android/camera/preferences/IconListPreference;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->onFinishInflate()V

    .line 28
    const v0, 0x7f09008c

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SeekbarPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6SeekBar;

    iput-object v0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mBar:Lcom/android/camera/ui/V6SeekBar;

    .line 29
    const v0, 0x7f09008d

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SeekbarPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6SeekbarPopupTexts;

    iput-object v0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mTexts:Lcom/android/camera/ui/V6SeekbarPopupTexts;

    .line 30
    iget-object v0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mBar:Lcom/android/camera/ui/V6SeekBar;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/V6SeekBar;->setOnValueChangedListener(Lcom/android/camera/ui/V6SeekBar$OnValueChangedListener;)V

    .line 26
    return-void
.end method

.method public onValueChanged(IZ)V
    .locals 6
    .param p1, "value"    # I
    .param p2, "touchUp"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 62
    iget v0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mValue:I

    if-eq p1, v0, :cond_1

    .line 63
    iput p1, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mValue:I

    .line 64
    iget-object v0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mTexts:Lcom/android/camera/ui/V6SeekbarPopupTexts;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6SeekbarPopupTexts;->setValue(I)V

    .line 65
    iget-object v0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0, p1}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    .line 67
    iget-object v0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 72
    new-instance v4, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 69
    const/4 v1, 0x7

    move v3, v2

    .line 68
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 61
    :cond_1
    return-void
.end method

.method public reloadPreference()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mValue:I

    .line 56
    iget-object v0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mTexts:Lcom/android/camera/ui/V6SeekbarPopupTexts;

    iget v1, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mValue:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6SeekbarPopupTexts;->setValue(I)V

    .line 57
    iget-object v0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mBar:Lcom/android/camera/ui/V6SeekBar;

    iget v1, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mValue:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6SeekBar;->setValue(I)V

    .line 54
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setEnabled(Z)V

    .line 81
    iget-object v0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mBar:Lcom/android/camera/ui/V6SeekBar;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mBar:Lcom/android/camera/ui/V6SeekBar;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6SeekBar;->setEnabled(Z)V

    .line 79
    :cond_0
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/ui/V6SeekbarPopup;->mTexts:Lcom/android/camera/ui/V6SeekbarPopupTexts;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/V6SeekbarPopupTexts;->setOrientation(IZ)V

    .line 34
    return-void
.end method
