.class public final Landroid/support/v7/recyclerview/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/recyclerview/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final RecyclerView:[I

.field public static RecyclerView_android_descendantFocusability:I

.field public static RecyclerView_android_orientation:I

.field public static RecyclerView_layoutManager:I

.field public static RecyclerView_reverseLayout:I

.field public static RecyclerView_spanCount:I

.field public static RecyclerView_stackFromEnd:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView:[I

    .line 100
    const/4 v0, 0x0

    sput v0, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView_layoutManager:I

    .line 110
    const/4 v0, 0x1

    sput v0, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView_reverseLayout:I

    .line 119
    const/4 v0, 0x2

    sput v0, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView_spanCount:I

    .line 129
    const/4 v0, 0x3

    sput v0, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView_stackFromEnd:I

    .line 146
    const/4 v0, 0x4

    sput v0, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView_android_orientation:I

    .line 164
    const/4 v0, 0x5

    sput v0, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView_android_descendantFocusability:I

    .line 56
    return-void

    .line 78
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x10100c4
        0x10100f1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
