.class public final Landroid/support/v7/recyclerview/R$attr;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/recyclerview/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "attr"
.end annotation


# static fields
.field public static layoutManager:I

.field public static reverseLayout:I

.field public static spanCount:I

.field public static stackFromEnd:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    sput v0, Landroid/support/v7/recyclerview/R$attr;->layoutManager:I

    .line 30
    sput v0, Landroid/support/v7/recyclerview/R$attr;->reverseLayout:I

    .line 34
    sput v0, Landroid/support/v7/recyclerview/R$attr;->spanCount:I

    .line 39
    sput v0, Landroid/support/v7/recyclerview/R$attr;->stackFromEnd:I

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
