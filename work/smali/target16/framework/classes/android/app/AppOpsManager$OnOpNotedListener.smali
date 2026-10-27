.class public interface abstract Landroid/app/AppOpsManager$OnOpNotedListener;
.super Ljava/lang/Object;
.source "AppOpsManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnOpNotedListener"
.end annotation


# virtual methods
.method public abstract whitelist onOpNoted(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V
.end method

.method public whitelist onOpNoted(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;III)V
    .registers 8

    .line 8131
    if-nez p5, :cond_a

    .line 8132
    move-object p5, p4

    move-object p4, p3

    move p3, p2

    move-object p2, p1

    move-object p1, p0

    invoke-interface/range {p1 .. p7}, Landroid/app/AppOpsManager$OnOpNotedListener;->onOpNoted(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 8134
    :cond_a
    return-void
.end method
