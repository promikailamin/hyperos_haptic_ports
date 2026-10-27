.class public Landroid/os/VibrationEffectStubImpl;
.super Ljava/lang/Object;
.source "VibrationEffectStubImpl.java"

# interfaces
.implements Landroid/os/VibrationEffectStub;


# static fields
.field private static final blacklist SUPPORT_EXT_ID:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 13
    const-string v0, "sys.haptic.motor"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "linear"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/os/VibrationEffectStubImpl;->SUPPORT_EXT_ID:Z

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist get(Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/VibrationEffect;
    .registers 15
    .param p1, "path"    # Ljava/lang/Object;
    .param p2, "ctx"    # Ljava/lang/Object;

    .line 17
    move-object v6, p1

    check-cast v6, Landroid/net/Uri;

    .line 18
    .local v6, "mediaUri":Landroid/net/Uri;
    move-object v7, p2

    check-cast v7, Landroid/content/Context;

    .line 20
    .local v7, "context":Landroid/content/Context;
    const/4 v8, 0x0

    :try_start_7
    invoke-virtual {v6}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 21
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "value"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 23
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_36

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 24
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 25
    .local v1, "val":Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object v6, v2

    .line 27
    .end local v1    # "val":Ljava/lang/String;
    :cond_36
    if-eqz v0, :cond_3b

    .line 28
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_3b} :catch_3c

    .line 33
    .end local v0    # "c":Landroid/database/Cursor;
    :cond_3b
    goto :goto_40

    .line 31
    :catch_3c
    move-exception v0

    .line 32
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 35
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_40
    const/4 v0, 0x0

    if-eqz v6, :cond_7f

    sget-boolean v1, Landroid/os/VibrationEffectStubImpl;->SUPPORT_EXT_ID:Z

    if-nez v1, :cond_48

    goto :goto_7f

    .line 37
    :cond_48
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1103003b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "mappings":[Ljava/lang/String;
    array-length v2, v1

    move v3, v8

    :goto_55
    if-ge v3, v2, :cond_7e

    aget-object v4, v1, v3

    .line 41
    .local v4, "mapping":Ljava/lang/String;
    const/4 v5, 0x2

    const-string v9, "\\|"

    invoke-virtual {v4, v9, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 42
    .local v5, "keyMapStr":[Ljava/lang/String;
    array-length v9, v5

    const/4 v10, 0x1

    if-le v9, v10, :cond_7b

    .line 43
    aget-object v9, v5, v8

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 44
    .local v9, "parsedKey":Landroid/net/Uri;
    invoke-virtual {p1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7b

    .line 45
    aget-object v0, v5, v10

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroid/os/VibrationEffect;->createPredefined(I)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    .line 40
    .end local v4    # "mapping":Ljava/lang/String;
    .end local v5    # "keyMapStr":[Ljava/lang/String;
    .end local v9    # "parsedKey":Landroid/net/Uri;
    :cond_7b
    add-int/lit8 v3, v3, 0x1

    goto :goto_55

    .line 49
    :cond_7e
    return-object v0

    .line 35
    .end local v1    # "mappings":[Ljava/lang/String;
    :cond_7f
    :goto_7f
    return-object v0
.end method
