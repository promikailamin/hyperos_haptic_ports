.class public interface abstract Landroid/view/InputEventLogStub;
.super Ljava/lang/Object;
.source "InputEventLogStub.java"


# static fields
.field public static final blacklist TAG:Ljava/lang/String; = "InputEventLogStub"


# direct methods
.method public static blacklist getInstance()Landroid/view/InputEventLogStub;
    .registers 1

    .line 16
    const-class v0, Landroid/view/InputEventLogStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InputEventLogStub;

    return-object v0
.end method


# virtual methods
.method public abstract blacklist checkScoutStateOnInputEvent(Landroid/view/InputEvent;Ljava/lang/String;)V
.end method

.method public blacklist init()V
    .registers 3

    .line 20
    const-string v0, "InputEventLogStub"

    const-string v1, "Can\'t find InputEventLogStubImpl"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    return-void
.end method

.method public abstract blacklist logOnInputEvent(Landroid/view/InputEvent;Ljava/lang/String;)V
.end method
