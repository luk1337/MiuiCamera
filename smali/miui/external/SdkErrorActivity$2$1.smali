.class Lmiui/external/SdkErrorActivity$2$1;
.super Landroid/os/AsyncTask;
.source "SdkErrorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/external/SdkErrorActivity$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic x:Lmiui/external/SdkErrorActivity$2;

.field final synthetic y:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lmiui/external/SdkErrorActivity$2;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lmiui/external/SdkErrorActivity$2$1;->x:Lmiui/external/SdkErrorActivity$2;

    iput-object p2, p0, Lmiui/external/SdkErrorActivity$2$1;->y:Landroid/app/Dialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs V([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 83
    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    iget-object v0, p0, Lmiui/external/SdkErrorActivity$2$1;->x:Lmiui/external/SdkErrorActivity$2;

    iget-object v0, v0, Lmiui/external/SdkErrorActivity$2;->w:Lmiui/external/SdkErrorActivity;

    invoke-static {v0}, Lmiui/external/SdkErrorActivity;->T(Lmiui/external/SdkErrorActivity;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method protected W(Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lmiui/external/SdkErrorActivity$2$1;->y:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 93
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/external/SdkErrorActivity$2$1;->x:Lmiui/external/SdkErrorActivity$2;

    iget-object v0, v0, Lmiui/external/SdkErrorActivity$2;->w:Lmiui/external/SdkErrorActivity;

    invoke-static {v0}, Lmiui/external/SdkErrorActivity;->S(Lmiui/external/SdkErrorActivity;)Landroid/app/Dialog;

    move-result-object v0

    .line 94
    :goto_0
    new-instance v1, Lmiui/external/SdkErrorActivity$SdkDialogFragment;

    iget-object v2, p0, Lmiui/external/SdkErrorActivity$2$1;->x:Lmiui/external/SdkErrorActivity$2;

    iget-object v2, v2, Lmiui/external/SdkErrorActivity$2;->w:Lmiui/external/SdkErrorActivity;

    invoke-direct {v1, v2, v0}, Lmiui/external/SdkErrorActivity$SdkDialogFragment;-><init>(Lmiui/external/SdkErrorActivity;Landroid/app/Dialog;)V

    iget-object v0, p0, Lmiui/external/SdkErrorActivity$2$1;->x:Lmiui/external/SdkErrorActivity$2;

    iget-object v0, v0, Lmiui/external/SdkErrorActivity$2;->w:Lmiui/external/SdkErrorActivity;

    invoke-virtual {v0}, Lmiui/external/SdkErrorActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v2, "SdkUpdateFinishDialog"

    invoke-virtual {v1, v0, v2}, Lmiui/external/SdkErrorActivity$SdkDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 91
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lmiui/external/SdkErrorActivity$2$1;->x:Lmiui/external/SdkErrorActivity$2;

    iget-object v0, v0, Lmiui/external/SdkErrorActivity$2;->w:Lmiui/external/SdkErrorActivity;

    invoke-static {v0}, Lmiui/external/SdkErrorActivity;->R(Lmiui/external/SdkErrorActivity;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 81
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmiui/external/SdkErrorActivity$2$1;->V([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 91
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lmiui/external/SdkErrorActivity$2$1;->W(Ljava/lang/Boolean;)V

    return-void
.end method
