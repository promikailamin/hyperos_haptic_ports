.class public interface abstract Lmiui/freedrag/IMiuiFreeDragService;
.super Ljava/lang/Object;
.source "IMiuiFreeDragService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/freedrag/IMiuiFreeDragService$Stub;,
        Lmiui/freedrag/IMiuiFreeDragService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "miui.freedrag.IMiuiFreeDragService"


# virtual methods
.method public abstract blacklist getFilterRules()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiui/freedrag/FilterRule;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
