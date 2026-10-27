.class public interface abstract Lcom/miui/whetstone/IDisplayScrollListener;
.super Ljava/lang/Object;
.source "IDisplayScrollListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/IDisplayScrollListener$Stub;,
        Lcom/miui/whetstone/IDisplayScrollListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.miui.whetstone.IDisplayScrollListener"


# virtual methods
.method public abstract blacklist onScroll(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
