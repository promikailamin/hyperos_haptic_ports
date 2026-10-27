.class public Landroid/media/ExternalRingtonesCursorWrapper;
.super Landroid/database/CursorWrapper;
.source "ExternalRingtonesCursorWrapper.java"


# instance fields
.field private blacklist mUri:Landroid/net/Uri;


# direct methods
.method public constructor blacklist <init>(Landroid/database/Cursor;Landroid/net/Uri;)V
    .registers 3

    .line 33
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 34
    iput-object p2, p0, Landroid/media/ExternalRingtonesCursorWrapper;->mUri:Landroid/net/Uri;

    .line 35
    return-void
.end method


# virtual methods
.method public whitelist getString(I)Ljava/lang/String;
    .registers 3

    .line 38
    const/4 v0, 0x2

    if-ne p1, v0, :cond_a

    .line 39
    iget-object p1, p0, Landroid/media/ExternalRingtonesCursorWrapper;->mUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 41
    :cond_a
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
