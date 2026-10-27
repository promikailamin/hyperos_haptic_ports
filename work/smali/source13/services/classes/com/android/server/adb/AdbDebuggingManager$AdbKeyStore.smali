.class Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;
.super Ljava/lang/Object;
.source "AdbDebuggingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/adb/AdbDebuggingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdbKeyStore"
.end annotation


# static fields
.field private static final KEYSTORE_VERSION:I = 0x1

.field private static final MAX_SUPPORTED_KEYSTORE_VERSION:I = 0x1

.field public static final NO_PREVIOUS_CONNECTION:J = 0x0L

.field private static final SYSTEM_KEY_FILE:Ljava/lang/String; = "/adb_keys"

.field private static final XML_ATTRIBUTE_KEY:Ljava/lang/String; = "key"

.field private static final XML_ATTRIBUTE_LAST_CONNECTION:Ljava/lang/String; = "lastConnection"

.field private static final XML_ATTRIBUTE_VERSION:Ljava/lang/String; = "version"

.field private static final XML_ATTRIBUTE_WIFI_BSSID:Ljava/lang/String; = "bssid"

.field private static final XML_KEYSTORE_START_TAG:Ljava/lang/String; = "keyStore"

.field private static final XML_TAG_ADB_KEY:Ljava/lang/String; = "adbKey"

.field private static final XML_TAG_WIFI_ACCESS_POINT:Ljava/lang/String; = "wifiAP"


# instance fields
.field private mAtomicKeyFile:Landroid/util/AtomicFile;

.field private final mKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTrustedNetworks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/adb/AdbDebuggingManager;


# direct methods
.method constructor <init>(Lcom/android/server/adb/AdbDebuggingManager;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/adb/AdbDebuggingManager;

    .line 1838
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1807
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    .line 1808
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mTrustedNetworks:Ljava/util/List;

    .line 1839
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->initKeyFile()V

    .line 1840
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->readTempKeysFile()V

    .line 1841
    const-string v0, "/adb_keys"

    invoke-direct {p0, v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->getSystemKeysFromFile(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mSystemKeys:Ljava/util/Set;

    .line 1842
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->addExistingUserKeysToKeyStore()V

    .line 1843
    return-void
.end method

.method private addAdbKeyToKeyMap(Landroid/util/TypedXmlPullParser;)V
    .registers 7
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;

    .line 2001
    const/4 v0, 0x0

    const-string/jumbo v1, "key"

    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2003
    .local v1, "key":Ljava/lang/String;
    :try_start_8
    const-string/jumbo v2, "lastConnection"

    .line 2004
    invoke-interface {p1, v0, v2}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    .line 2005
    .local v2, "connectionTime":J
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_18} :catch_1a

    .line 2008
    nop

    .end local v2    # "connectionTime":J
    goto :goto_24

    .line 2006
    :catch_1a
    move-exception v0

    .line 2007
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error reading adbKey attributes"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2009
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_24
    return-void
.end method

.method private addExistingUserKeysToKeyStore()V
    .registers 7

    .line 2021
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmUserKeyFile(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_8c

    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmUserKeyFile(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_8c

    .line 2024
    :cond_16
    const/4 v0, 0x0

    .line 2025
    .local v0, "mapUpdated":Z
    :try_start_17
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v3}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmUserKeyFile(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_27} :catch_59

    .line 2027
    .local v1, "in":Ljava/io/BufferedReader;
    :cond_27
    :goto_27
    :try_start_27
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "key":Ljava/lang/String;
    if-eqz v2, :cond_4b

    .line 2031
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 2032
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    iget-object v4, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v4}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmTicker(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$Ticker;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/adb/AdbDebuggingManager$Ticker;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_49
    .catchall {:try_start_27 .. :try_end_49} :catchall_4f

    .line 2033
    const/4 v0, 0x1

    goto :goto_27

    .line 2036
    .end local v3    # "key":Ljava/lang/String;
    :cond_4b
    :try_start_4b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_59

    .line 2038
    .end local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_84

    .line 2025
    .restart local v1    # "in":Ljava/io/BufferedReader;
    :catchall_4f
    move-exception v2

    :try_start_50
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_54

    goto :goto_58

    :catchall_54
    move-exception v3

    :try_start_55
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "mapUpdated":Z
    .end local p0    # "this":Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;
    :goto_58
    throw v2
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_59} :catch_59

    .line 2036
    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v0    # "mapUpdated":Z
    .restart local p0    # "this":Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;
    :catch_59
    move-exception v1

    .line 2037
    .local v1, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caught an exception reading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v4}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmUserKeyFile(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    .end local v1    # "e":Ljava/io/IOException;
    :goto_84
    if-eqz v0, :cond_8b

    .line 2040
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$msendPersistKeyStoreMessage(Lcom/android/server/adb/AdbDebuggingManager;)V

    .line 2042
    :cond_8b
    return-void

    .line 2022
    .end local v0    # "mapUpdated":Z
    :cond_8c
    :goto_8c
    return-void
.end method

.method private addTrustedNetworkToTrustedNetworks(Landroid/util/TypedXmlPullParser;)V
    .registers 4
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;

    .line 2012
    const/4 v0, 0x0

    const-string v1, "bssid"

    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2013
    .local v0, "bssid":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mTrustedNetworks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2014
    return-void
.end method

.method private filterOutOldKeys()Z
    .registers 12

    .line 2095
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->getAllowedConnectionTime()J

    move-result-wide v0

    .line 2096
    .local v0, "allowedTime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_c

    .line 2097
    const/4 v2, 0x0

    return v2

    .line 2099
    :cond_c
    const/4 v2, 0x0

    .line 2100
    .local v2, "keysDeleted":Z
    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v3}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmTicker(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$Ticker;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/adb/AdbDebuggingManager$Ticker;->currentTimeMillis()J

    move-result-wide v3

    .line 2101
    .local v3, "systemTime":J
    iget-object v5, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 2102
    .local v5, "keyMapIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :goto_21
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_42

    .line 2103
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 2104
    .local v6, "keyEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 2105
    .local v7, "connectionTime":J
    add-long v9, v7, v0

    cmp-long v9, v3, v9

    if-lez v9, :cond_41

    .line 2106
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 2107
    const/4 v2, 0x1

    .line 2109
    .end local v6    # "keyEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v7    # "connectionTime":J
    :cond_41
    goto :goto_21

    .line 2112
    :cond_42
    if-eqz v2, :cond_4f

    .line 2113
    iget-object v6, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    iget-object v7, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$mwriteKeys(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/Iterable;)V

    .line 2115
    :cond_4f
    return v2
.end method

.method private getSystemKeysFromFile(Ljava/lang/String;)Ljava/util/Set;
    .registers 8
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1900
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1901
    .local v0, "systemKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1902
    .local v1, "systemKeyFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_62

    .line 1903
    :try_start_10
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1a} :catch_3d

    .line 1905
    .local v2, "in":Ljava/io/BufferedReader;
    :cond_1a
    :goto_1a
    :try_start_1a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "key":Ljava/lang/String;
    if-eqz v3, :cond_2f

    .line 1906
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1907
    .end local v4    # "key":Ljava/lang/String;
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1a

    .line 1908
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2e
    .catchall {:try_start_1a .. :try_end_2e} :catchall_33

    goto :goto_1a

    .line 1911
    .end local v3    # "key":Ljava/lang/String;
    :cond_2f
    :try_start_2f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_3d

    .line 1913
    .end local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_62

    .line 1903
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :catchall_33
    move-exception v3

    :try_start_34
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_38

    goto :goto_3c

    :catchall_38
    move-exception v4

    :try_start_39
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "systemKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "systemKeyFile":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;
    .end local p1    # "fileName":Ljava/lang/String;
    :goto_3c
    throw v3
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3d} :catch_3d

    .line 1911
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v0    # "systemKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v1    # "systemKeyFile":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;
    .restart local p1    # "fileName":Ljava/lang/String;
    :catch_3d
    move-exception v2

    .line 1912
    .local v2, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caught an exception reading "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    .end local v2    # "e":Ljava/io/IOException;
    :cond_62
    :goto_62
    return-object v0
.end method

.method private initKeyFile()V
    .registers 3

    .line 1894
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmTempKeysFile(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 1895
    new-instance v0, Landroid/util/AtomicFile;

    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmTempKeysFile(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mAtomicKeyFile:Landroid/util/AtomicFile;

    .line 1897
    :cond_15
    return-void
.end method

.method private readKeyStoreContents(Landroid/util/TypedXmlPullParser;)V
    .registers 6
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1987
    :goto_0
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_48

    .line 1988
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1989
    .local v0, "tagName":Ljava/lang/String;
    const-string v1, "adbKey"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1990
    invoke-direct {p0, p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->addAdbKeyToKeyMap(Landroid/util/TypedXmlPullParser;)V

    goto :goto_44

    .line 1991
    :cond_17
    const-string/jumbo v1, "wifiAP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1992
    invoke-direct {p0, p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->addTrustedNetworkToTrustedNetworks(Landroid/util/TypedXmlPullParser;)V

    goto :goto_44

    .line 1994
    :cond_24
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring tag \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'. Not recognized."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    :goto_44
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1997
    .end local v0    # "tagName":Ljava/lang/String;
    goto :goto_0

    .line 1998
    :cond_48
    return-void
.end method

.method private readTempKeysFile()V
    .registers 8

    .line 1940
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1941
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mTrustedNetworks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1942
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mAtomicKeyFile:Landroid/util/AtomicFile;

    if-nez v0, :cond_3c

    .line 1943
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->initKeyFile()V

    .line 1944
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mAtomicKeyFile:Landroid/util/AtomicFile;

    if-nez v0, :cond_3c

    .line 1945
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to obtain the key file, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v2}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmTempKeysFile(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", for reading"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    return-void

    .line 1951
    :cond_3c
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mAtomicKeyFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v0

    if-nez v0, :cond_45

    .line 1952
    return-void

    .line 1954
    :cond_45
    :try_start_45
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mAtomicKeyFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_4b} :catch_b8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_45 .. :try_end_4b} :catch_ad

    .line 1957
    .local v0, "keyStream":Ljava/io/FileInputStream;
    :try_start_4b
    invoke-static {v0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v1

    .line 1958
    .local v1, "parser":Landroid/util/TypedXmlPullParser;
    const-string/jumbo v2, "keyStore"

    invoke-static {v1, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1960
    const/4 v2, 0x0

    const-string/jumbo v3, "version"

    invoke-interface {v1, v2, v3}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1961
    .local v2, "keystoreVersion":I
    const/4 v3, 0x1

    if-le v2, v3, :cond_90

    .line 1962
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Keystore version="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not supported (max_supported="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4b .. :try_end_8a} :catch_93
    .catchall {:try_start_4b .. :try_end_8a} :catchall_91

    .line 1974
    if-eqz v0, :cond_8f

    :try_start_8c
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_8f} :catch_b8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8c .. :try_end_8f} :catch_ad

    .line 1965
    :cond_8f
    return-void

    .line 1972
    .end local v2    # "keystoreVersion":I
    :cond_90
    goto :goto_99

    .line 1954
    .end local v1    # "parser":Landroid/util/TypedXmlPullParser;
    :catchall_91
    move-exception v1

    goto :goto_a2

    .line 1967
    :catch_93
    move-exception v1

    .line 1971
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_94
    invoke-static {v0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v2

    move-object v1, v2

    .line 1973
    .local v1, "parser":Landroid/util/TypedXmlPullParser;
    :goto_99
    invoke-direct {p0, v1}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->readKeyStoreContents(Landroid/util/TypedXmlPullParser;)V
    :try_end_9c
    .catchall {:try_start_94 .. :try_end_9c} :catchall_91

    .line 1974
    .end local v1    # "parser":Landroid/util/TypedXmlPullParser;
    if-eqz v0, :cond_c2

    :try_start_9e
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a1} :catch_b8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9e .. :try_end_a1} :catch_ad

    goto :goto_c2

    .line 1954
    :goto_a2
    if-eqz v0, :cond_ac

    :try_start_a4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_a7
    .catchall {:try_start_a4 .. :try_end_a7} :catchall_a8

    goto :goto_ac

    :catchall_a8
    move-exception v2

    :try_start_a9
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;
    :cond_ac
    :goto_ac
    throw v1
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_ad} :catch_b8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a9 .. :try_end_ad} :catch_ad

    .line 1976
    .end local v0    # "keyStream":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;
    :catch_ad
    move-exception v0

    .line 1977
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Caught XmlPullParserException parsing the XML key file: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c3

    .line 1974
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_b8
    move-exception v0

    .line 1975
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Caught an IOException parsing the XML key file: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1978
    .end local v0    # "e":Ljava/io/IOException;
    :cond_c2
    :goto_c2
    nop

    .line 1979
    :goto_c3
    return-void
.end method


# virtual methods
.method public addTrustedNetwork(Ljava/lang/String;)V
    .registers 3
    .param p1, "bssid"    # Ljava/lang/String;

    .line 1850
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mTrustedNetworks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1851
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$msendPersistKeyStoreMessage(Lcom/android/server/adb/AdbDebuggingManager;)V

    .line 1852
    return-void
.end method

.method public deleteKeyStore()V
    .registers 2

    .line 2148
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2149
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mTrustedNetworks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2150
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmUserKeyFile(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 2151
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmUserKeyFile(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2153
    :cond_1b
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mAtomicKeyFile:Landroid/util/AtomicFile;

    if-nez v0, :cond_20

    .line 2154
    return-void

    .line 2156
    :cond_20
    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    .line 2157
    return-void
.end method

.method public findKeyFromFingerprint(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "fingerprint"    # Ljava/lang/String;

    .line 1873
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1874
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$mgetFingerprints(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1875
    .local v2, "f":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 1876
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1878
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v2    # "f":Ljava/lang/String;
    :cond_2f
    goto :goto_a

    .line 1879
    :cond_30
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAllowedConnectionTime()J
    .registers 5

    .line 2199
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmContext(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_allowed_connection_time"

    const-wide/32 v2, 0x240c8400

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastConnectionTime(Ljava/lang/String;)J
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .line 2164
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextExpirationTime()J
    .registers 18

    .line 2123
    move-object/from16 v0, p0

    const-wide/16 v1, -0x1

    .line 2124
    .local v1, "minExpiration":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->getAllowedConnectionTime()J

    move-result-wide v3

    .line 2126
    .local v3, "allowedTime":J
    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_f

    .line 2127
    return-wide v1

    .line 2129
    :cond_f
    iget-object v7, v0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v7}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmTicker(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$Ticker;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/server/adb/AdbDebuggingManager$Ticker;->currentTimeMillis()J

    move-result-wide v7

    .line 2130
    .local v7, "systemTime":J
    iget-object v9, v0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 2131
    .local v9, "keyMapIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :goto_23
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4c

    .line 2132
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 2133
    .local v10, "keyEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 2136
    .local v11, "connectionTime":J
    add-long v13, v11, v3

    sub-long/2addr v13, v7

    invoke-static {v5, v6, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    .line 2137
    .local v13, "keyExpiration":J
    const-wide/16 v15, -0x1

    cmp-long v15, v1, v15

    if-eqz v15, :cond_4a

    cmp-long v15, v13, v1

    if-gez v15, :cond_4b

    .line 2138
    :cond_4a
    move-wide v1, v13

    .line 2140
    .end local v10    # "keyEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v11    # "connectionTime":J
    .end local v13    # "keyExpiration":J
    :cond_4b
    goto :goto_23

    .line 2141
    :cond_4c
    return-wide v1
.end method

.method public getPairedDevices()Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/debug/PairDevice;",
            ">;"
        }
    .end annotation

    .line 1855
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1856
    .local v0, "pairedDevices":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/debug/PairDevice;>;"
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1857
    .local v2, "keyEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$mgetFingerprints(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1858
    .local v3, "fingerprints":Ljava/lang/String;
    const-string/jumbo v4, "nouser@nohostname"

    .line 1859
    .local v4, "hostname":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "\\s+"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1860
    .local v5, "args":[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x1

    if-le v6, v7, :cond_3c

    .line 1861
    aget-object v4, v5, v7

    .line 1863
    :cond_3c
    new-instance v6, Landroid/debug/PairDevice;

    invoke-direct {v6}, Landroid/debug/PairDevice;-><init>()V

    .line 1864
    .local v6, "pairDevice":Landroid/debug/PairDevice;
    iput-object v4, v6, Landroid/debug/PairDevice;->name:Ljava/lang/String;

    .line 1865
    iput-object v3, v6, Landroid/debug/PairDevice;->guid:Ljava/lang/String;

    .line 1866
    iget-object v7, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v7}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmWifiConnectedKeys(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, v6, Landroid/debug/PairDevice;->connected:Z

    .line 1867
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1868
    .end local v2    # "keyEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v3    # "fingerprints":Ljava/lang/String;
    .end local v4    # "hostname":Ljava/lang/String;
    .end local v5    # "args":[Ljava/lang/String;
    .end local v6    # "pairDevice":Landroid/debug/PairDevice;
    goto :goto_f

    .line 1869
    :cond_5f
    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 1922
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isKeyAuthorized(Ljava/lang/String;)Z
    .registers 13
    .param p1, "key"    # Ljava/lang/String;

    .line 2212
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mSystemKeys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 2213
    return v1

    .line 2215
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->getLastConnectionTime(Ljava/lang/String;)J

    move-result-wide v2

    .line 2216
    .local v2, "lastConnectionTime":J
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const/4 v6, 0x0

    if-nez v0, :cond_16

    .line 2217
    return v6

    .line 2219
    :cond_16
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->getAllowedConnectionTime()J

    move-result-wide v7

    .line 2222
    .local v7, "allowedConnectionTime":J
    cmp-long v0, v7, v4

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmTicker(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$Ticker;

    move-result-object v0

    .line 2223
    invoke-interface {v0}, Lcom/android/server/adb/AdbDebuggingManager$Ticker;->currentTimeMillis()J

    move-result-wide v4

    add-long v9, v2, v7

    cmp-long v0, v4, v9

    if-gez v0, :cond_2f

    goto :goto_31

    :cond_2f
    move v1, v6

    goto :goto_32

    :cond_31
    :goto_31
    nop

    .line 2222
    :goto_32
    return v1
.end method

.method public isTrustedNetwork(Ljava/lang/String;)Z
    .registers 3
    .param p1, "bssid"    # Ljava/lang/String;

    .line 2232
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mTrustedNetworks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public persistKeyStore()V
    .registers 12

    .line 2050
    const-string/jumbo v0, "wifiAP"

    const-string v1, "adbKey"

    const-string/jumbo v2, "keyStore"

    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->filterOutOldKeys()Z

    .line 2051
    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1f

    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mTrustedNetworks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 2052
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->deleteKeyStore()V

    .line 2053
    return-void

    .line 2055
    :cond_1f
    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mAtomicKeyFile:Landroid/util/AtomicFile;

    if-nez v3, :cond_51

    .line 2056
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->initKeyFile()V

    .line 2057
    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mAtomicKeyFile:Landroid/util/AtomicFile;

    if-nez v3, :cond_51

    .line 2058
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to obtain the key file, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v2}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$fgetmTempKeysFile(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", for writing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2061
    return-void

    .line 2064
    :cond_51
    const/4 v3, 0x0

    .line 2066
    .local v3, "keyStream":Ljava/io/FileOutputStream;
    :try_start_52
    iget-object v4, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mAtomicKeyFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4

    move-object v3, v4

    .line 2067
    invoke-static {v3}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v4

    .line 2068
    .local v4, "serializer":Landroid/util/TypedXmlSerializer;
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v4, v7, v6}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2070
    invoke-interface {v4, v7, v2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2071
    const-string/jumbo v6, "version"

    invoke-interface {v4, v7, v6, v5}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2072
    iget-object v5, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_79
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 2073
    .local v6, "keyEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v4, v7, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2074
    const-string/jumbo v8, "key"

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v4, v7, v8, v9}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2075
    const-string/jumbo v8, "lastConnection"

    .line 2076
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 2075
    invoke-interface {v4, v7, v8, v9, v10}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 2077
    invoke-interface {v4, v7, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2078
    nop

    .end local v6    # "keyEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    goto :goto_79

    .line 2079
    :cond_a9
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mTrustedNetworks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_af
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2080
    .local v5, "bssid":Ljava/lang/String;
    invoke-interface {v4, v7, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2081
    const-string v6, "bssid"

    invoke-interface {v4, v7, v6, v5}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2082
    invoke-interface {v4, v7, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2083
    nop

    .end local v5    # "bssid":Ljava/lang/String;
    goto :goto_af

    .line 2084
    :cond_c8
    invoke-interface {v4, v7, v2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2085
    invoke-interface {v4}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 2086
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mAtomicKeyFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_d3} :catch_d4

    .line 2090
    .end local v4    # "serializer":Landroid/util/TypedXmlSerializer;
    goto :goto_e3

    .line 2087
    :catch_d4
    move-exception v0

    .line 2088
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Caught an exception writing the key map: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2089
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mAtomicKeyFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2091
    .end local v0    # "e":Ljava/io/IOException;
    :goto_e3
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$mwriteKeys(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/Iterable;)V

    .line 2092
    return-void
.end method

.method public reloadKeyMap()V
    .registers 1

    .line 1846
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->readTempKeysFile()V

    .line 1847
    return-void
.end method

.method public removeKey(Ljava/lang/String;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 1883
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1884
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1885
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$msendPersistKeyStoreMessage(Lcom/android/server/adb/AdbDebuggingManager;)V

    .line 1887
    :cond_12
    return-void
.end method

.method public setLastConnectionTime(Ljava/lang/String;J)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "connectionTime"    # J

    .line 2171
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->setLastConnectionTime(Ljava/lang/String;JZ)V

    .line 2172
    return-void
.end method

.method setLastConnectionTime(Ljava/lang/String;JZ)V
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "connectionTime"    # J
    .param p4, "force"    # Z

    .line 2183
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, p2

    if-ltz v0, :cond_1b

    if-nez p4, :cond_1b

    .line 2184
    return-void

    .line 2188
    :cond_1b
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mSystemKeys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2189
    return-void

    .line 2191
    :cond_24
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2192
    return-void
.end method

.method public updateKeyStore()V
    .registers 2

    .line 1930
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->filterOutOldKeys()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1931
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->-$$Nest$msendPersistKeyStoreMessage(Lcom/android/server/adb/AdbDebuggingManager;)V

    .line 1933
    :cond_b
    return-void
.end method
