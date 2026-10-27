.class public interface abstract Landroid/hardware/broadcastradio/AlertStatus$$;
.super Ljava/lang/Object;
.source "AlertStatus.java"


# direct methods
.method public static toString(I)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_5

    .line 16
    const-string p0, "ACTUAL"

    return-object p0

    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 17
    const-string p0, "EXERCISE"

    return-object p0

    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    .line 18
    const-string p0, "TEST"

    return-object p0

    .line 19
    :cond_11
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
