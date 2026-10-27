.class public interface abstract Landroid/widget/TextViewOnReceiveContentListenerStub;
.super Ljava/lang/Object;
.source "TextViewOnReceiveContentListenerStub.java"


# direct methods
.method public static blacklist getInstance()Landroid/widget/TextViewOnReceiveContentListenerStub;
    .registers 1

    .line 16
    const-class v0, Landroid/widget/TextViewOnReceiveContentListenerStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextViewOnReceiveContentListenerStub;

    return-object v0
.end method


# virtual methods
.method public abstract blacklist clipboardPaste(Landroid/content/ClipData;Landroid/content/Context;Landroid/text/Editable;Landroid/view/View;)Z
.end method
