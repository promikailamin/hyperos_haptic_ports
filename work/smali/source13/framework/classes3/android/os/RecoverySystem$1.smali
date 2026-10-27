.class Landroid/os/RecoverySystem$1;
.super Ljava/util/HashSet;
.source "RecoverySystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/RecoverySystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 163
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 164
    const-string v0, "com.android.settings"

    invoke-virtual {p0, v0}, Landroid/os/RecoverySystem$1;->add(Ljava/lang/Object;)Z

    .line 165
    const-string v0, "com.android.phone"

    invoke-virtual {p0, v0}, Landroid/os/RecoverySystem$1;->add(Ljava/lang/Object;)Z

    .line 166
    const-string v0, "com.xiaomi.mihomemanager"

    invoke-virtual {p0, v0}, Landroid/os/RecoverySystem$1;->add(Ljava/lang/Object;)Z

    .line 167
    const-string v0, "com.xiaomi.market"

    invoke-virtual {p0, v0}, Landroid/os/RecoverySystem$1;->add(Ljava/lang/Object;)Z

    .line 168
    const-string v0, "com.xiaomi.downloadmiui"

    invoke-virtual {p0, v0}, Landroid/os/RecoverySystem$1;->add(Ljava/lang/Object;)Z

    .line 170
    const-string v0, "com.xiaomi.stabilitytools"

    invoke-virtual {p0, v0}, Landroid/os/RecoverySystem$1;->add(Ljava/lang/Object;)Z

    .line 171
    return-void
.end method
