.class Lcom/android/camera/ui/ManualISOPopup$HorizontalListViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "ManualISOPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/ManualISOPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HorizontalListViewAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/ManualISOPopup$HorizontalListViewAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/camera/ui/ManualISOPopup;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/ManualISOPopup;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/camera/ui/ManualISOPopup;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/camera/ui/ManualISOPopup$HorizontalListViewAdapter;->this$0:Lcom/android/camera/ui/ManualISOPopup;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 112
    invoke-virtual {p1}, Lcom/android/camera/ui/ManualISOPopup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 113
    const-string/jumbo v1, "layout_inflater"

    .line 112
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/camera/ui/ManualISOPopup$HorizontalListViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 111
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/camera/ui/ManualISOPopup$HorizontalListViewAdapter;->this$0:Lcom/android/camera/ui/ManualISOPopup;

    iget-object v0, v0, Lcom/android/camera/ui/ManualISOPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/camera/ui/ManualISOPopup$HorizontalListViewAdapter;->this$0:Lcom/android/camera/ui/ManualISOPopup;

    iget-object v0, v0, Lcom/android/camera/ui/ManualISOPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 123
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 134
    if-nez p2, :cond_0

    .line 135
    new-instance v0, Lcom/android/camera/ui/ManualISOPopup$HorizontalListViewAdapter$ViewHolder;

    invoke-direct {v0, p0, v4}, Lcom/android/camera/ui/ManualISOPopup$HorizontalListViewAdapter$ViewHolder;-><init>(Lcom/android/camera/ui/ManualISOPopup$HorizontalListViewAdapter;Lcom/android/camera/ui/ManualISOPopup$HorizontalListViewAdapter$ViewHolder;)V

    .line 136
    .local v0, "holder":Lcom/android/camera/ui/ManualISOPopup$HorizontalListViewAdapter$ViewHolder;
    iget-object v2, p0, Lcom/android/camera/ui/ManualISOPopup$HorizontalListViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040010

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 137
    const v2, 0x7f0c0039

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 138
    .local v1, "title":Landroid/widget/TextView;
    invoke-static {v0, v1}, Lcom/android/camera/ui/ManualISOPopup$HorizontalListViewAdapter$ViewHolder;->-set0(Lcom/android/camera/ui/ManualISOPopup$HorizontalListViewAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 139
    iget-object v2, p0, Lcom/android/camera/ui/ManualISOPopup$HorizontalListViewAdapter;->this$0:Lcom/android/camera/ui/ManualISOPopup;

    invoke-static {v2}, Lcom/android/camera/ui/ManualISOPopup;->-get1(Lcom/android/camera/ui/ManualISOPopup;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setWidth(I)V

    .line 140
    iget-object v2, p0, Lcom/android/camera/ui/ManualISOPopup$HorizontalListViewAdapter;->this$0:Lcom/android/camera/ui/ManualISOPopup;

    invoke-static {v2}, Lcom/android/camera/ui/ManualISOPopup;->-get0(Lcom/android/camera/ui/ManualISOPopup;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHeight(I)V

    .line 141
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 146
    .end local v1    # "title":Landroid/widget/TextView;
    :goto_0
    invoke-static {v0}, Lcom/android/camera/ui/ManualISOPopup$HorizontalListViewAdapter$ViewHolder;->-get0(Lcom/android/camera/ui/ManualISOPopup$HorizontalListViewAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/ManualISOPopup$HorizontalListViewAdapter;->this$0:Lcom/android/camera/ui/ManualISOPopup;

    iget-object v3, v3, Lcom/android/camera/ui/ManualISOPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    invoke-static {v0}, Lcom/android/camera/ui/ManualISOPopup$HorizontalListViewAdapter$ViewHolder;->-get0(Lcom/android/camera/ui/ManualISOPopup$HorizontalListViewAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ManualISOPopup$HorizontalListViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/android/camera/Util;->setNumberText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 149
    return-object p2

    .line 143
    .end local v0    # "holder":Lcom/android/camera/ui/ManualISOPopup$HorizontalListViewAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ManualISOPopup$HorizontalListViewAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/android/camera/ui/ManualISOPopup$HorizontalListViewAdapter$ViewHolder;
    goto :goto_0
.end method
