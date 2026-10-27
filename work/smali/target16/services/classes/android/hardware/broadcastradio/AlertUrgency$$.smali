.class public interface abstract Landroid/hardware/broadcastradio/AlertUrgency$$;
.super Ljava/lang/Object;
.source "AlertUrgency.java"


# direct methods
.method public static toString(I)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_5

    .line 18
    const-string p0, "IMMEDIATE"

    return-object p0

    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 19
    const-string p0, "EXPECTED"

    return-object p0

    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    .line 20
    const-string p0, "FUTURE"

    return-object p0

    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    .line 21
    const-string p0, "PAST"

    return-object p0

    :cond_17
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1d

    .line 22
    const-string p0, "UNKNOWN"

    return-object p0

    .line 23
    :cond_1d
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
