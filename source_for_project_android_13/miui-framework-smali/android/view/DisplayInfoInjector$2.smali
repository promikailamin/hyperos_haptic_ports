.class Landroid/view/DisplayInfoInjector$2;
.super Ljava/util/ArrayList;
.source "DisplayInfoInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/DisplayInfoInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    const-string v0, "com.miui.home"

    invoke-virtual {p0, v0}, Landroid/view/DisplayInfoInjector$2;->add(Ljava/lang/Object;)Z

    .line 44
    const-string v0, "com.android.camera"

    invoke-virtual {p0, v0}, Landroid/view/DisplayInfoInjector$2;->add(Ljava/lang/Object;)Z

    .line 45
    const-string v0, "com.miui.gallery"

    invoke-virtual {p0, v0}, Landroid/view/DisplayInfoInjector$2;->add(Ljava/lang/Object;)Z

    .line 46
    const-string v0, "com.benqu.wuta"

    invoke-virtual {p0, v0}, Landroid/view/DisplayInfoInjector$2;->add(Ljava/lang/Object;)Z

    .line 47
    const-string v0, "com.miui.video"

    invoke-virtual {p0, v0}, Landroid/view/DisplayInfoInjector$2;->add(Ljava/lang/Object;)Z

    .line 48
    const-string v0, "com.baidu.input_mi"

    invoke-virtual {p0, v0}, Landroid/view/DisplayInfoInjector$2;->add(Ljava/lang/Object;)Z

    .line 49
    const-string v0, "com.iflytek.inputmethod.miui"

    invoke-virtual {p0, v0}, Landroid/view/DisplayInfoInjector$2;->add(Ljava/lang/Object;)Z

    .line 50
    const-string v0, "com.sohu.inputmethod.sogou.xiaomi"

    invoke-virtual {p0, v0}, Landroid/view/DisplayInfoInjector$2;->add(Ljava/lang/Object;)Z

    .line 51
    const-string v0, "com.miui.securityinputmethod"

    invoke-virtual {p0, v0}, Landroid/view/DisplayInfoInjector$2;->add(Ljava/lang/Object;)Z

    .line 52
    return-void
.end method
