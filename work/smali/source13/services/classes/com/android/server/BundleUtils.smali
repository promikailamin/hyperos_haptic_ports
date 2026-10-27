.class public final Lcom/android/server/BundleUtils;
.super Ljava/lang/Object;
.source "BundleUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static clone(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 2
    .param p0, "in"    # Landroid/os/Bundle;

    .line 46
    new-instance v0, Landroid/os/Bundle;

    if-eqz p0, :cond_8

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_b

    :cond_8
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_b
    return-object v0
.end method

.method public static isEmpty(Landroid/os/Bundle;)Z
    .registers 2
    .param p0, "in"    # Landroid/os/Bundle;

    .line 35
    if-eqz p0, :cond_b

    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method
