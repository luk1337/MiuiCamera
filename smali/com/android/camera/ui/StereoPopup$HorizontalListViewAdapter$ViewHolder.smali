.class Lcom/android/camera/ui/StereoPopup$HorizontalListViewAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "StereoPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/StereoPopup$HorizontalListViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field private mTitle:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/android/camera/ui/StereoPopup$HorizontalListViewAdapter;


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/StereoPopup$HorizontalListViewAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/StereoPopup$HorizontalListViewAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/camera/ui/StereoPopup$HorizontalListViewAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/StereoPopup$HorizontalListViewAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    return-object p1
.end method

.method private constructor <init>(Lcom/android/camera/ui/StereoPopup$HorizontalListViewAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/ui/StereoPopup$HorizontalListViewAdapter;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/camera/ui/StereoPopup$HorizontalListViewAdapter$ViewHolder;->this$1:Lcom/android/camera/ui/StereoPopup$HorizontalListViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/StereoPopup$HorizontalListViewAdapter;Lcom/android/camera/ui/StereoPopup$HorizontalListViewAdapter$ViewHolder;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/ui/StereoPopup$HorizontalListViewAdapter;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/ui/StereoPopup$HorizontalListViewAdapter$ViewHolder;-><init>(Lcom/android/camera/ui/StereoPopup$HorizontalListViewAdapter;)V

    return-void
.end method
