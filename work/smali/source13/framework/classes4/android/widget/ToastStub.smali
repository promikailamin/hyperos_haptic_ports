.class public interface abstract Landroid/widget/ToastStub;
.super Ljava/lang/Object;
.source "ToastStub.java"


# static fields
.field public static final blacklist TAG:Ljava/lang/String; = "ToastStub"


# direct methods
.method public static blacklist get()Landroid/widget/ToastStub;
    .registers 1

    .line 15
    const-class v0, Landroid/widget/ToastStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ToastStub;

    return-object v0
.end method


# virtual methods
.method public abstract blacklist addAppName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
.end method

.method public blacklist init()V
    .registers 3

    .line 19
    const-string v0, "ToastStub"

    const-string v1, "Init ToastStub"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    return-void
.end method
