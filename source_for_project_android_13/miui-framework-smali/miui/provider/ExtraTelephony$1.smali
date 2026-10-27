.class Lmiui/provider/ExtraTelephony$1;
.super Ljava/lang/Object;
.source "ExtraTelephony.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/provider/ExtraTelephony;->getCallBlockType(Landroid/content/Context;Ljava/lang/String;IZZZ)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$context:Landroid/content/Context;

.field final synthetic blacklist val$isForwardCall:Z

.field final synthetic blacklist val$isRepeated:Z

.field final synthetic blacklist val$isRepeatedBlocked:Z

.field final synthetic blacklist val$number:Ljava/lang/String;

.field final synthetic blacklist val$slotId:I


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;IZZZLandroid/content/Context;)V
    .registers 7

    .line 1711
    iput-object p1, p0, Lmiui/provider/ExtraTelephony$1;->val$number:Ljava/lang/String;

    iput p2, p0, Lmiui/provider/ExtraTelephony$1;->val$slotId:I

    iput-boolean p3, p0, Lmiui/provider/ExtraTelephony$1;->val$isForwardCall:Z

    iput-boolean p4, p0, Lmiui/provider/ExtraTelephony$1;->val$isRepeated:Z

    iput-boolean p5, p0, Lmiui/provider/ExtraTelephony$1;->val$isRepeatedBlocked:Z

    iput-object p6, p0, Lmiui/provider/ExtraTelephony$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist call()Ljava/lang/Integer;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1715
    const/4 v0, 0x0

    .line 1716
    .local v0, "callBlockType":I
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lmiui/provider/ExtraTelephony$1;->val$number:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lmiui/provider/ExtraTelephony$1;->val$slotId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 1717
    iget-boolean v2, p0, Lmiui/provider/ExtraTelephony$1;->val$isForwardCall:Z

    const-string v3, ""

    if-eqz v2, :cond_1b

    const-string v2, "is_forward_call"

    goto :goto_1c

    :cond_1b
    move-object v2, v3

    :goto_1c
    const/4 v4, 0x2

    aput-object v2, v1, v4

    const/4 v2, 0x3

    .line 1718
    iget-boolean v4, p0, Lmiui/provider/ExtraTelephony$1;->val$isRepeated:Z

    if-eqz v4, :cond_27

    const-string v4, "is_repeated_normal_call"

    goto :goto_28

    :cond_27
    move-object v4, v3

    :goto_28
    aput-object v4, v1, v2

    const/4 v2, 0x4

    .line 1719
    iget-boolean v4, p0, Lmiui/provider/ExtraTelephony$1;->val$isRepeatedBlocked:Z

    if-eqz v4, :cond_31

    const-string v3, "is_repeated_blocked_call"

    :cond_31
    aput-object v3, v1, v2

    .line 1720
    .local v1, "selectArgs":[Ljava/lang/String;
    sget-object v2, Lmiui/provider/ExtraTelephony$Judge;->CALL_CONTENT_URI:Landroid/net/Uri;

    .line 1722
    .local v2, "uri":Landroid/net/Uri;
    :try_start_35
    iget-object v3, p0, Lmiui/provider/ExtraTelephony$1;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v2

    move-object v6, v1

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1724
    .local v3, "cursor":Landroid/database/Cursor;
    if-eqz v3, :cond_5b

    .line 1725
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_57

    .line 1726
    const-string v4, "callBlockType"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move v0, v4

    .line 1728
    :cond_57
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_6c

    .line 1730
    :cond_5b
    iget-object v4, p0, Lmiui/provider/ExtraTelephony$1;->val$context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v5, v6, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_6b} :catch_6d

    move v0, v4

    .line 1735
    .end local v3    # "cursor":Landroid/database/Cursor;
    :goto_6c
    goto :goto_75

    .line 1733
    :catch_6d
    move-exception v3

    .line 1734
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "ExtraTelephony"

    const-string v5, "getCallBlockType catch exception"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1736
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_75
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    return-object v3
.end method

.method public bridge synthetic whitelist test-api call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1711
    invoke-virtual {p0}, Lmiui/provider/ExtraTelephony$1;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
