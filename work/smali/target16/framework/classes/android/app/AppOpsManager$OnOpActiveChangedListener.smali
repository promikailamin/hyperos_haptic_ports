.class public interface abstract Landroid/app/AppOpsManager$OnOpActiveChangedListener;
.super Ljava/lang/Object;
.source "AppOpsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnOpActiveChangedListener"
.end annotation


# virtual methods
.method public whitelist onOpActiveChanged(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZII)V
    .registers 9

    .line 8077
    if-nez p5, :cond_a

    .line 8078
    move-object p5, p4

    move-object p4, p3

    move p3, p2

    move-object p2, p1

    move-object p1, p0

    invoke-interface/range {p1 .. p8}, Landroid/app/AppOpsManager$OnOpActiveChangedListener;->onOpActiveChanged(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZII)V

    .line 8081
    :cond_a
    return-void
.end method

.method public blacklist onOpActiveChanged(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZII)V
    .registers 8

    .line 8049
    invoke-interface {p0, p1, p2, p3, p5}, Landroid/app/AppOpsManager$OnOpActiveChangedListener;->onOpActiveChanged(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 8050
    return-void
.end method

.method public abstract whitelist onOpActiveChanged(Ljava/lang/String;ILjava/lang/String;Z)V
.end method
