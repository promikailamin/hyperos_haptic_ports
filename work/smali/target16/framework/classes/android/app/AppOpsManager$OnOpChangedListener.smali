.class public interface abstract Landroid/app/AppOpsManager$OnOpChangedListener;
.super Ljava/lang/Object;
.source "AppOpsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnOpChangedListener"
.end annotation


# virtual methods
.method public abstract whitelist onOpChanged(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public blacklist onOpChanged(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    .line 7979
    const-string p3, ""

    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_9

    .line 7980
    const/4 p2, 0x0

    .line 7982
    :cond_9
    invoke-interface {p0, p1, p2}, Landroid/app/AppOpsManager$OnOpChangedListener;->onOpChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 7983
    return-void
.end method

.method public whitelist onOpChanged(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 6

    .line 8006
    const-string v0, "default:0"

    invoke-static {p4, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_b

    .line 8008
    invoke-interface {p0, p1, p2, p3}, Landroid/app/AppOpsManager$OnOpChangedListener;->onOpChanged(Ljava/lang/String;Ljava/lang/String;I)V

    .line 8010
    :cond_b
    return-void
.end method
