.class public Lmiui/util/SystemAnalytics$Action;
.super Ljava/lang/Object;
.source "SystemAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/SystemAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation


# static fields
.field protected static final blacklist ACTION:Ljava/lang/String; = "_action_"

.field protected static final blacklist CATEGORY:Ljava/lang/String; = "_category_"

.field protected static final blacklist EVENT_ID:Ljava/lang/String; = "_event_id_"

.field protected static final blacklist LABEL:Ljava/lang/String; = "_label_"

.field protected static final blacklist VALUE:Ljava/lang/String; = "_value_"


# instance fields
.field private blacklist mContent:Lorg/json/JSONObject;

.field private blacklist mExtra:Lorg/json/JSONObject;

.field private blacklist sKeywords:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lmiui/util/SystemAnalytics$Action;->mContent:Lorg/json/JSONObject;

    .line 50
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lmiui/util/SystemAnalytics$Action;->mExtra:Lorg/json/JSONObject;

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmiui/util/SystemAnalytics$Action;->sKeywords:Ljava/util/Set;

    .line 55
    const-string v1, "_event_id_"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lmiui/util/SystemAnalytics$Action;->sKeywords:Ljava/util/Set;

    const-string v1, "_category_"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v0, p0, Lmiui/util/SystemAnalytics$Action;->sKeywords:Ljava/util/Set;

    const-string v1, "_action_"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lmiui/util/SystemAnalytics$Action;->sKeywords:Ljava/util/Set;

    const-string v1, "_label_"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v0, p0, Lmiui/util/SystemAnalytics$Action;->sKeywords:Ljava/util/Set;

    const-string v1, "_value_"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method

.method private blacklist ensureKey(Ljava/lang/String;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .line 145
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, p0, Lmiui/util/SystemAnalytics$Action;->sKeywords:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_2e

    .line 146
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "this key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is built-in, please pick another key."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_2e
    :goto_2e
    return-void
.end method


# virtual methods
.method blacklist addContent(Ljava/lang/String;I)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 92
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 94
    :try_start_6
    iget-object v0, p0, Lmiui/util/SystemAnalytics$Action;->mContent:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_c

    .line 97
    goto :goto_10

    .line 95
    :catch_c
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 99
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_10
    :goto_10
    return-void
.end method

.method blacklist addContent(Ljava/lang/String;J)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 102
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 104
    :try_start_6
    iget-object v0, p0, Lmiui/util/SystemAnalytics$Action;->mContent:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_c

    .line 107
    goto :goto_10

    .line 105
    :catch_c
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 109
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_10
    :goto_10
    return-void
.end method

.method blacklist addContent(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 112
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 114
    :try_start_6
    iget-object v0, p0, Lmiui/util/SystemAnalytics$Action;->mContent:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_c

    .line 117
    goto :goto_10

    .line 115
    :catch_c
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 119
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_10
    :goto_10
    return-void
.end method

.method blacklist addContent(Lorg/json/JSONObject;)V
    .registers 6
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 122
    if-eqz p1, :cond_26

    .line 123
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 124
    .local v0, "it":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 125
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "key":Ljava/lang/String;
    invoke-direct {p0, v1}, Lmiui/util/SystemAnalytics$Action;->ensureKey(Ljava/lang/String;)V

    .line 128
    :try_start_17
    iget-object v2, p0, Lmiui/util/SystemAnalytics$Action;->mContent:Lorg/json/JSONObject;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_20} :catch_21

    .line 131
    goto :goto_25

    .line 129
    :catch_21
    move-exception v2

    .line 130
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 132
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_25
    goto :goto_6

    .line 134
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_26
    return-void
.end method

.method protected blacklist addEventId(Ljava/lang/String;)Lmiui/util/SystemAnalytics$Action;
    .registers 3
    .param p1, "eventId"    # Ljava/lang/String;

    .line 63
    const-string v0, "_event_id_"

    invoke-virtual {p0, v0, p1}, Lmiui/util/SystemAnalytics$Action;->addContent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    return-object p0
.end method

.method blacklist addExtra(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 138
    :try_start_0
    iget-object v0, p0, Lmiui/util/SystemAnalytics$Action;->mExtra:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 141
    goto :goto_a

    .line 139
    :catch_6
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 142
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_a
    return-void
.end method

.method public blacklist addParam(Ljava/lang/String;I)Lmiui/util/SystemAnalytics$Action;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 74
    invoke-direct {p0, p1}, Lmiui/util/SystemAnalytics$Action;->ensureKey(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0, p1, p2}, Lmiui/util/SystemAnalytics$Action;->addContent(Ljava/lang/String;I)V

    .line 76
    return-object p0
.end method

.method public blacklist addParam(Ljava/lang/String;J)Lmiui/util/SystemAnalytics$Action;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 80
    invoke-direct {p0, p1}, Lmiui/util/SystemAnalytics$Action;->ensureKey(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0, p1, p2, p3}, Lmiui/util/SystemAnalytics$Action;->addContent(Ljava/lang/String;J)V

    .line 82
    return-object p0
.end method

.method public blacklist addParam(Ljava/lang/String;Ljava/lang/String;)Lmiui/util/SystemAnalytics$Action;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 86
    invoke-direct {p0, p1}, Lmiui/util/SystemAnalytics$Action;->ensureKey(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0, p1, p2}, Lmiui/util/SystemAnalytics$Action;->addContent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    return-object p0
.end method

.method public blacklist addParam(Ljava/lang/String;Lorg/json/JSONObject;)Lmiui/util/SystemAnalytics$Action;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/json/JSONObject;

    .line 68
    invoke-direct {p0, p1}, Lmiui/util/SystemAnalytics$Action;->ensureKey(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0, p1, p2}, Lmiui/util/SystemAnalytics$Action;->addContent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    return-object p0
.end method

.method final blacklist getContent()Lorg/json/JSONObject;
    .registers 2

    .line 151
    iget-object v0, p0, Lmiui/util/SystemAnalytics$Action;->mContent:Lorg/json/JSONObject;

    return-object v0
.end method

.method final blacklist getExtra()Lorg/json/JSONObject;
    .registers 2

    .line 155
    iget-object v0, p0, Lmiui/util/SystemAnalytics$Action;->mExtra:Lorg/json/JSONObject;

    return-object v0
.end method
