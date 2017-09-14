.class Lcom/android/camera/CameraBrightness$CameraBrightnessTask;
.super Landroid/os/AsyncTask;
.source "CameraBrightness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraBrightness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraBrightnessTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraBrightness;


# direct methods
.method private constructor <init>(Lcom/android/camera/CameraBrightness;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CameraBrightness;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/CameraBrightness;Lcom/android/camera/CameraBrightness$CameraBrightnessTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CameraBrightness;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;-><init>(Lcom/android/camera/CameraBrightness;)V

    return-void
.end method

.method private execCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 124
    .local v8, "time":J
    const-string/jumbo v6, ""

    .line 125
    .local v6, "result":Ljava/lang/String;
    const/4 v2, 0x0

    .line 127
    .local v2, "in":Ljava/io/BufferedReader;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    .line 128
    .local v5, "proc":Ljava/lang/Process;
    invoke-virtual {v5}, Ljava/lang/Process;->waitFor()I

    move-result v10

    if-eqz v10, :cond_0

    .line 129
    const-string/jumbo v10, "CameraBrightness"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "exit value = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/lang/Process;->exitValue()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-object v6

    .line 132
    :cond_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    .line 133
    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    .line 132
    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 134
    .local v3, "in":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v7, Ljava/lang/StringBuffer;

    .end local v2    # "in":Ljava/io/BufferedReader;
    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 135
    .local v7, "stringBuffer":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .line 136
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 137
    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 142
    .end local v4    # "line":Ljava/lang/String;
    .end local v7    # "stringBuffer":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/InterruptedException;
    move-object v2, v3

    .line 143
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v5    # "proc":Ljava/lang/Process;
    :goto_1
    const-string/jumbo v10, "CameraBrightness"

    const-string/jumbo v11, "execCommand InterruptedException"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 149
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_2
    return-object v6

    .line 139
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v5    # "proc":Ljava/lang/Process;
    .restart local v7    # "stringBuffer":Ljava/lang/StringBuffer;
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 140
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 141
    const-string/jumbo v10, "CameraBrightness"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "execCommand lcd value="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " cost="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v8

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .local v2, "in":Ljava/io/BufferedReader;
    goto :goto_2

    .line 145
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "proc":Ljava/lang/Process;
    .end local v7    # "stringBuffer":Ljava/lang/StringBuffer;
    .local v2, "in":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    .line 146
    .end local v2    # "in":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/io/IOException;
    :goto_3
    const-string/jumbo v10, "CameraBrightness"

    const-string/jumbo v11, "execCommand IOException"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 142
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :catch_2
    move-exception v1

    .restart local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 145
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "proc":Ljava/lang/Process;
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .local v2, "in":Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method private getCurrentBackLight()I
    .locals 8

    .prologue
    .line 93
    const/4 v0, 0x0

    .line 94
    .local v0, "backlight":Ljava/lang/String;
    const/4 v4, 0x0

    .line 96
    .end local v0    # "backlight":Ljava/lang/String;
    .local v4, "tryTimes":I
    :cond_0
    :goto_0
    const-string/jumbo v5, "0"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    if-nez v0, :cond_2

    :cond_1
    const/4 v5, 0x3

    if-ge v4, v5, :cond_2

    .line 97
    invoke-virtual {p0}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 108
    :cond_2
    const-string/jumbo v5, "CameraBrightness"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getCurrentBackLight currentSetting="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 110
    iget-object v5, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    const-string/jumbo v6, "config_backlightBits"

    invoke-static {v5, v6}, Lcom/android/camera/CameraBrightness;->-wrap0(Lcom/android/camera/CameraBrightness;Ljava/lang/String;)I

    move-result v1

    .line 111
    .local v1, "backlightBits":I
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    float-to-int v2, v5

    .line 112
    .local v2, "bl":I
    const/16 v5, 0x8

    if-le v1, v5, :cond_3

    .line 113
    add-int/lit8 v5, v1, -0x8

    shr-int/2addr v2, v5

    .line 114
    const-string/jumbo v5, "CameraBrightness"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getCurrentBackLight convert to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_3
    return v2

    .line 98
    .end local v1    # "backlightBits":I
    .end local v2    # "bl":I
    :cond_4
    const-string/jumbo v5, "cat sys/class/leds/lcd-backlight/brightness"

    invoke-direct {p0, v5}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->execCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "backlight":Ljava/lang/String;
    const-string/jumbo v5, "0"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    if-nez v0, :cond_0

    .line 101
    :cond_5
    const-wide/16 v6, 0x12c

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 102
    :catch_0
    move-exception v3

    .line 103
    .local v3, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v5, "CameraBrightness"

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 118
    .end local v0    # "backlight":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :cond_6
    const/4 v5, -0x1

    return v5
.end method

.method private updateBrightness(I)V
    .locals 4
    .param p1, "brightness"    # I

    .prologue
    .line 78
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    invoke-static {v1}, Lcom/android/camera/CameraBrightness;->-get3(Lcom/android/camera/CameraBrightness;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    invoke-static {v1}, Lcom/android/camera/CameraBrightness;->-get0(Lcom/android/camera/CameraBrightness;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 81
    .local v0, "localLayoutParams":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    invoke-static {v1}, Lcom/android/camera/CameraBrightness;->-get3(Lcom/android/camera/CameraBrightness;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    invoke-static {v1}, Lcom/android/camera/CameraBrightness;->-get1(Lcom/android/camera/CameraBrightness;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 84
    :cond_1
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 86
    :goto_0
    const-string/jumbo v1, "CameraBrightness"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateBrightness setting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " useDefaultValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    invoke-static {v3}, Lcom/android/camera/CameraBrightness;->-get3(Lcom/android/camera/CameraBrightness;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 87
    const-string/jumbo v3, " screenBrightness="

    .line 86
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 87
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 86
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    invoke-static {v1}, Lcom/android/camera/CameraBrightness;->-get0(Lcom/android/camera/CameraBrightness;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 89
    iget-object v1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    invoke-static {v1, p1}, Lcom/android/camera/CameraBrightness;->-set0(Lcom/android/camera/CameraBrightness;I)I

    .line 76
    return-void

    .line 78
    .end local v0    # "localLayoutParams":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    iget-object v1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    invoke-static {v1}, Lcom/android/camera/CameraBrightness;->-get1(Lcom/android/camera/CameraBrightness;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 82
    .restart local v0    # "localLayoutParams":Landroid/view/WindowManager$LayoutParams;
    :cond_3
    int-to-float v1, p1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 11
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 39
    const-string/jumbo v4, "CameraBrightness"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "doInBackground useDefaultValue="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    invoke-static {v6}, Lcom/android/camera/CameraBrightness;->-get3(Lcom/android/camera/CameraBrightness;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " paused="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    invoke-static {v6}, Lcom/android/camera/CameraBrightness;->-get1(Lcom/android/camera/CameraBrightness;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object v4, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    invoke-static {v4}, Lcom/android/camera/CameraBrightness;->-get3(Lcom/android/camera/CameraBrightness;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    invoke-static {v4}, Lcom/android/camera/CameraBrightness;->-get1(Lcom/android/camera/CameraBrightness;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 67
    :cond_0
    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    return-object v4

    .line 41
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->getCurrentBackLight()I

    move-result v2

    .line 42
    .local v2, "currentBacklight":I
    if-gtz v2, :cond_2

    .line 43
    return-object v8

    .line 47
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraBrightness;->-get2()Landroid/util/Spline;

    move-result-object v4

    if-nez v4, :cond_3

    .line 48
    iget-object v4, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    invoke-static {v4}, Lcom/android/camera/CameraBrightness;->-wrap1(Lcom/android/camera/CameraBrightness;)V

    .line 50
    :cond_3
    invoke-static {}, Lcom/android/camera/CameraBrightness;->-get2()Landroid/util/Spline;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 51
    invoke-static {}, Lcom/android/camera/CameraBrightness;->-get2()Landroid/util/Spline;

    move-result-object v4

    int-to-float v5, v2

    invoke-virtual {v4, v5}, Landroid/util/Spline;->interpolate(F)F

    move-result v4

    float-to-int v0, v4

    .line 52
    .local v0, "brightness":I
    iget-object v4, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    invoke-static {v4}, Lcom/android/camera/CameraBrightness;->-get0(Lcom/android/camera/CameraBrightness;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 53
    .local v3, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    .line 54
    int-to-float v4, v0

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v4, v5

    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v4, v4, v6

    if-gez v4, :cond_4

    .line 55
    const-string/jumbo v4, "CameraBrightness"

    const-string/jumbo v5, "doInBackground brightness unchanged"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-object v8

    .line 61
    :cond_4
    const/16 v4, 0xb9

    invoke-static {v0, v10, v4}, Lcom/android/camera/Util;->clamp(III)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x43390000    # 185.0f

    div-float/2addr v4, v5

    const v5, 0x3e99999a    # 0.3f

    mul-float/2addr v4, v5

    .line 60
    const v5, 0x3dcccccd    # 0.1f

    add-float v1, v5, v4

    .line 62
    .local v1, "brightnessAdjustRatio":F
    int-to-double v4, v0

    float-to-double v6, v1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v6, v8

    mul-double/2addr v4, v6

    double-to-int v0, v4

    .line 63
    const/16 v4, 0xff

    invoke-static {v0, v10, v4}, Lcom/android/camera/Util;->clamp(III)I

    move-result v0

    .line 64
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    return-object v4
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 38
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-void

    .line 73
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->updateBrightness(I)V

    .line 71
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 71
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
