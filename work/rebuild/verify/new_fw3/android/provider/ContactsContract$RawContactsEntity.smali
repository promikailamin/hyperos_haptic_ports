.class public final Landroid/provider/ContactsContract$RawContactsEntity;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/ContactsContract$DataColumns;
.implements Landroid/provider/ContactsContract$RawContactsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RawContactsEntity"
.end annotation


# static fields
.field public static final whitelist CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/raw_contact_entity"

.field public static final whitelist CONTENT_URI:Landroid/net/Uri;

.field public static final greylist-max-o CORP_CONTENT_URI:Landroid/net/Uri;

.field public static final whitelist DATA_ID:Ljava/lang/String; = "data_id"

.field public static final greylist-max-o FOR_EXPORT_ONLY:Ljava/lang/String; = "for_export_only"

.field public static final whitelist PROFILE_CONTENT_URI:Landroid/net/Uri;

.field private static final blacklist TAG:Ljava/lang/String; = "ContactsContract.RawContactsEntity"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 5734
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    .line 5735
    const-string/jumbo v1, "raw_contact_entities"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    .line 5743
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    .line 5744
    const-string/jumbo v2, "raw_contact_entities_corp"

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$RawContactsEntity;->CORP_CONTENT_URI:Landroid/net/Uri;

    .line 5749
    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    .line 5750
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$RawContactsEntity;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    .line 5749
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 5729
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist queryRawContactEntity(Landroid/content/ContentResolver;J)Ljava/util/Map;
    .registers 11
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "J)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;>;"
        }
    .end annotation

    .line 5793
    sget-object v0, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    .line 5794
    nop

    .line 5796
    invoke-static {p1, p2}, Landroid/provider/ContactsContract$Contacts;->isEnterpriseContactId(J)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 5797
    sget-object v0, Landroid/provider/ContactsContract$RawContactsEntity;->CORP_CONTENT_URI:Landroid/net/Uri;

    .line 5798
    sget-wide v1, Landroid/provider/ContactsContract$Contacts;->ENTERPRISE_CONTACT_ID_BASE:J

    sub-long/2addr p1, v1

    move-object v1, v0

    goto :goto_11

    .line 5796
    :cond_10
    move-object v1, v0

    .line 5800
    :goto_11
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 5805
    nop

    .line 5808
    const/4 v7, 0x0

    :try_start_18
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    .line 5810
    const-string v3, "contact_id=?"

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    invoke-static {p0}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v7
    :try_end_2d
    .catchall {:try_start_18 .. :try_end_2d} :catchall_a6

    .line 5813
    const-string p0, "ContactsContract.RawContactsEntity"

    if-nez v7, :cond_3d

    .line 5814
    :try_start_31
    const-string p1, "EntityIterator is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_a6

    .line 5815
    nop

    .line 5839
    if-eqz v7, :cond_3c

    .line 5840
    invoke-interface {v7}, Landroid/content/EntityIterator;->close()V

    .line 5815
    :cond_3c
    return-object v6

    .line 5818
    :cond_3d
    :try_start_3d
    invoke-interface {v7}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_60

    .line 5819
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Data does not exist. contactId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catchall {:try_start_3d .. :try_end_59} :catchall_a6

    .line 5820
    nop

    .line 5839
    if-eqz v7, :cond_5f

    .line 5840
    invoke-interface {v7}, Landroid/content/EntityIterator;->close()V

    .line 5820
    :cond_5f
    return-object v6

    .line 5823
    :cond_60
    :goto_60
    :try_start_60
    invoke-interface {v7}, Landroid/content/EntityIterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_a0

    .line 5824
    invoke-interface {v7}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Entity;

    .line 5825
    invoke-virtual {p0}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_74
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Entity$NamedContentValues;

    .line 5826
    iget-object p1, p1, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 5827
    const-string/jumbo p2, "mimetype"

    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 5828
    if-eqz p2, :cond_9e

    .line 5829
    invoke-interface {v6, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 5830
    if-nez v0, :cond_9b

    .line 5831
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5832
    invoke-interface {v6, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5834
    :cond_9b
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9e
    .catchall {:try_start_60 .. :try_end_9e} :catchall_a6

    .line 5836
    :cond_9e
    goto :goto_74

    .line 5837
    :cond_9f
    goto :goto_60

    .line 5839
    :cond_a0
    if-eqz v7, :cond_a5

    .line 5840
    invoke-interface {v7}, Landroid/content/EntityIterator;->close()V

    .line 5843
    :cond_a5
    return-object v6

    .line 5839
    :catchall_a6
    move-exception v0

    move-object p0, v0

    if-eqz v7, :cond_ad

    .line 5840
    invoke-interface {v7}, Landroid/content/EntityIterator;->close()V

    .line 5842
    :cond_ad
    throw p0
.end method
