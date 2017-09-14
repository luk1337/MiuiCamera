.class public Lcom/android/camera/ui/GridSettingPopup;
.super Lcom/android/camera/ui/V6AbstractSettingPopup;
.source "GridSettingPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/GridSettingPopup$MySimpleAdapter;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field protected mCurrentIndex:I

.field protected mDisplayColumnNum:I

.field protected mGridView:Landroid/widget/GridView;

.field protected mGridViewHeight:I

.field protected mHasImage:Z

.field protected mIgnoreSameItemClick:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x1

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const-string/jumbo v0, "GridSettingPopup"

    iput-object v0, p0, Lcom/android/camera/ui/GridSettingPopup;->TAG:Ljava/lang/String;

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mCurrentIndex:I

    .line 30
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mDisplayColumnNum:I

    .line 32
    iput-boolean v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mHasImage:Z

    .line 33
    iput-boolean v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mIgnoreSameItemClick:Z

    .line 35
    return-void
.end method


# virtual methods
.method protected getItemResId()I
    .locals 1

    .prologue
    .line 185
    const v0, 0x7f04000b

    return v0
.end method

.method protected initGridViewLayoutParam(I)V
    .locals 5
    .param p1, "itemNum"    # I

    .prologue
    .line 81
    sget v2, Lcom/android/camera/Util;->sWindowWidth:I

    int-to-float v3, v2

    .line 82
    iget v2, p0, Lcom/android/camera/ui/GridSettingPopup;->mDisplayColumnNum:I

    if-ne p1, v2, :cond_0

    iget v2, p0, Lcom/android/camera/ui/GridSettingPopup;->mDisplayColumnNum:I

    int-to-float v2, v2

    .line 81
    :goto_0
    div-float v2, v3, v2

    float-to-int v0, v2

    .line 83
    .local v0, "gridItemWidth":I
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    mul-int v2, p1, v0

    iget v3, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridViewHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 84
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    return-void

    .line 82
    .end local v0    # "gridItemWidth":I
    .end local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    iget v2, p0, Lcom/android/camera/ui/GridSettingPopup;->mDisplayColumnNum:I

    int-to-float v2, v2

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v2, v4

    goto :goto_0
.end method

.method public initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V
    .locals 11
    .param p1, "preferenceGroup"    # Lcom/android/camera/preferences/PreferenceGroup;
    .param p2, "preference"    # Lcom/android/camera/preferences/IconListPreference;
    .param p3, "p"    # Lcom/android/camera/ui/MessageDispacher;

    .prologue
    .line 41
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/ui/V6AbstractSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V

    .line 42
    invoke-virtual {p0}, Lcom/android/camera/ui/GridSettingPopup;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 43
    .local v2, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 44
    .local v7, "entries":[Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getImageIds()[I

    move-result-object v9

    .line 45
    .local v9, "iconIds":[I
    if-nez v9, :cond_0

    .line 46
    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getIconIds()[I

    move-result-object v9

    .line 51
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v3, "listItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v1, v7

    if-ge v8, v1, :cond_2

    .line 53
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 54
    .local v10, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "text"

    aget-object v4, v7, v8

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    if-eqz v9, :cond_1

    const-string/jumbo v1, "image"

    aget v4, v9, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_1
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 60
    .end local v10    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    if-eqz v9, :cond_3

    iget-boolean v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mHasImage:Z

    if-eqz v1, :cond_3

    .line 64
    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const-string/jumbo v1, "image"

    const/4 v4, 0x0

    aput-object v1, v5, v4

    const-string/jumbo v1, "text"

    const/4 v4, 0x1

    aput-object v1, v5, v4

    .line 65
    .local v5, "from":[Ljava/lang/String;
    const v1, 0x7f090034

    const v4, 0x7f090031

    filled-new-array {v1, v4}, [I

    move-result-object v6

    .line 67
    .local v6, "to":[I
    :goto_1
    new-instance v0, Lcom/android/camera/ui/GridSettingPopup$MySimpleAdapter;

    .line 69
    invoke-virtual {p0}, Lcom/android/camera/ui/GridSettingPopup;->getItemResId()I

    move-result v4

    move-object v1, p0

    .line 67
    invoke-direct/range {v0 .. v6}, Lcom/android/camera/ui/GridSettingPopup$MySimpleAdapter;-><init>(Lcom/android/camera/ui/GridSettingPopup;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 72
    .local v0, "listItemAdapter":Lcom/android/camera/ui/GridSettingPopup$MySimpleAdapter;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x5

    if-ge v1, v4, :cond_4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_2
    iput v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mDisplayColumnNum:I

    .line 73
    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 74
    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    array-length v4, v7

    invoke-virtual {v1, v4}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 75
    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/GridView;->setChoiceMode(I)V

    .line 76
    array-length v1, v7

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/GridSettingPopup;->initGridViewLayoutParam(I)V

    .line 77
    invoke-virtual {p0}, Lcom/android/camera/ui/GridSettingPopup;->reloadPreference()V

    .line 40
    return-void

    .line 61
    .end local v0    # "listItemAdapter":Lcom/android/camera/ui/GridSettingPopup$MySimpleAdapter;
    .end local v5    # "from":[Ljava/lang/String;
    .end local v6    # "to":[I
    :cond_3
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const-string/jumbo v1, "text"

    const/4 v4, 0x0

    aput-object v1, v5, v4

    .line 62
    .restart local v5    # "from":[Ljava/lang/String;
    const/4 v1, 0x1

    new-array v6, v1, [I

    const v1, 0x7f090031

    const/4 v4, 0x0

    aput v1, v6, v4

    .line 60
    .restart local v6    # "to":[I
    goto :goto_1

    .line 72
    .restart local v0    # "listItemAdapter":Lcom/android/camera/ui/GridSettingPopup$MySimpleAdapter;
    :cond_4
    const/4 v1, 0x5

    goto :goto_2
.end method

.method protected notifyToDispatcher(Z)V
    .locals 6
    .param p1, "sameItem"    # Z

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 152
    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 149
    const/4 v1, 0x6

    .line 150
    const/4 v2, 0x0

    .line 151
    const/4 v3, 0x3

    move-object v5, p0

    .line 148
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 146
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 127
    iget-object v3, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 128
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 129
    .local v1, "index":I
    iget v3, p0, Lcom/android/camera/ui/GridSettingPopup;->mCurrentIndex:I

    if-ne v3, v1, :cond_1

    iget-boolean v3, p0, Lcom/android/camera/ui/GridSettingPopup;->mIgnoreSameItemClick:Z

    if-eqz v3, :cond_1

    return-void

    .line 130
    :cond_1
    iget v3, p0, Lcom/android/camera/ui/GridSettingPopup;->mCurrentIndex:I

    if-ne v3, v1, :cond_3

    const/4 v2, 0x1

    .line 131
    .local v2, "sameItem":Z
    :goto_0
    iput v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mCurrentIndex:I

    .line 132
    iget-object v3, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3, v1, v5}, Landroid/widget/GridView;->setItemChecked(IZ)V

    .line 133
    iget-object v3, p0, Lcom/android/camera/ui/GridSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3, v1}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    .line 135
    const-string/jumbo v3, "pref_camera_scenemode_key"

    iget-object v4, p0, Lcom/android/camera/ui/GridSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v4}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 136
    invoke-static {v5}, Lcom/android/camera/CameraSettings;->setFocusModeSwitching(Z)V

    .line 142
    :cond_2
    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/GridSettingPopup;->notifyToDispatcher(Z)V

    .line 143
    iget-object v3, p0, Lcom/android/camera/ui/GridSettingPopup;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 126
    return-void

    .line 130
    .end local v2    # "sameItem":Z
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "sameItem":Z
    goto :goto_0

    .line 137
    :cond_4
    const-string/jumbo v3, "pref_audio_focus_key"

    iget-object v4, p0, Lcom/android/camera/ui/GridSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v4}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 138
    iget-object v3, p0, Lcom/android/camera/ui/GridSettingPopup;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/android/camera/ActivityBase;

    invoke-virtual {v3}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/module/Module;->isVideoRecording()Z

    move-result v3

    .line 137
    if-eqz v3, :cond_2

    .line 139
    iget-object v3, p0, Lcom/android/camera/ui/GridSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 140
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
    .locals 2

    .prologue
    .line 167
    invoke-super {p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->onFinishInflate()V

    .line 168
    const v0, 0x7f090033

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/GridSettingPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    .line 169
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridViewHeight:I

    .line 166
    return-void
.end method

.method public reloadPreference()V
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mCurrentIndex:I

    .line 90
    iget v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mCurrentIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    iget v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mCurrentIndex:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/GridView;->setItemChecked(IZ)V

    .line 88
    :goto_0
    return-void

    .line 93
    :cond_0
    const-string/jumbo v0, "GridSettingPopup"

    const-string/jumbo v1, "Invalid preference value."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->print()V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 178
    invoke-super {p0, p1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setEnabled(Z)V

    .line 179
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setEnabled(Z)V

    .line 177
    :cond_0
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 173
    return-void
.end method

.method public show(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 158
    invoke-super {p0, p1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->show(Z)V

    .line 159
    const-string/jumbo v0, "pref_camera_scenemode_key"

    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    const-string/jumbo v0, "auto"

    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setFocusModeSwitching(Z)V

    goto :goto_0
.end method

.method protected updateItemView(ILandroid/view/View;)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "item"    # Landroid/view/View;

    .prologue
    .line 123
    return-void
.end method
