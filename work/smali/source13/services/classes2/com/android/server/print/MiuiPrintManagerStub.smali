.class public Lcom/android/server/print/MiuiPrintManagerStub;
.super Ljava/lang/Object;
.source "MiuiPrintManagerStub.java"


# static fields
.field private static volatile sInstance:Lcom/android/server/print/MiuiPrintManagerInter;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 13
    :try_start_0
    const-string v0, "com.android.server.print.MiuiPrintManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 14
    .local v0, "miuiPrintManager":Ljava/lang/Class;
    if-eqz v0, :cond_24

    .line 15
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/print/MiuiPrintManagerInter;

    sput-object v1, Lcom/android/server/print/MiuiPrintManagerStub;->sInstance:Lcom/android/server/print/MiuiPrintManagerInter;
    :try_end_10
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_10} :catch_20
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_10} :catch_1b
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_10} :catch_16
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_10} :catch_11

    goto :goto_24

    .line 23
    .end local v0    # "miuiPrintManager":Ljava/lang/Class;
    :catch_11
    move-exception v0

    .line 24
    .local v0, "e":Ljava/lang/ClassCastException;
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_25

    .line 21
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :catch_16
    move-exception v0

    .line 22
    .local v0, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/InstantiationException;
    goto :goto_24

    .line 19
    :catch_1b
    move-exception v0

    .line 20
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_24

    .line 17
    :catch_20
    move-exception v0

    .line 18
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 25
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_24
    :goto_24
    nop

    .line 26
    :goto_25
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method public static ensureInjected(Landroid/print/PrintJobInfo;)Z
    .registers 2
    .param p0, "info"    # Landroid/print/PrintJobInfo;

    .line 29
    sget-object v0, Lcom/android/server/print/MiuiPrintManagerStub;->sInstance:Lcom/android/server/print/MiuiPrintManagerInter;

    if-eqz v0, :cond_b

    .line 30
    sget-object v0, Lcom/android/server/print/MiuiPrintManagerStub;->sInstance:Lcom/android/server/print/MiuiPrintManagerInter;

    invoke-interface {v0, p0}, Lcom/android/server/print/MiuiPrintManagerInter;->ensureInjected(Landroid/print/PrintJobInfo;)Z

    move-result v0

    return v0

    .line 32
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static printInject(ZLandroid/content/Intent;)V
    .registers 3
    .param p0, "injected"    # Z
    .param p1, "intent"    # Landroid/content/Intent;

    .line 36
    sget-object v0, Lcom/android/server/print/MiuiPrintManagerStub;->sInstance:Lcom/android/server/print/MiuiPrintManagerInter;

    if-eqz v0, :cond_9

    .line 37
    sget-object v0, Lcom/android/server/print/MiuiPrintManagerStub;->sInstance:Lcom/android/server/print/MiuiPrintManagerInter;

    invoke-interface {v0, p0, p1}, Lcom/android/server/print/MiuiPrintManagerInter;->printInject(ZLandroid/content/Intent;)V

    .line 39
    :cond_9
    return-void
.end method
