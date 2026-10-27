.class Lmiui/util/MiuiFeatureUtils$ConfigReader;
.super Ljava/lang/Object;
.source "MiuiFeatureUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/MiuiFeatureUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConfigReader"
.end annotation


# instance fields
.field private blacklist mConfigResult:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mCurrentConfig:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCurrentGroupName:Ljava/lang/String;

.field private blacklist mPath:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "path"    # Ljava/lang/String;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/util/MiuiFeatureUtils$ConfigReader;->mPath:Ljava/lang/String;

    .line 86
    iput-object v0, p0, Lmiui/util/MiuiFeatureUtils$ConfigReader;->mConfigResult:Ljava/util/HashMap;

    .line 88
    iput-object v0, p0, Lmiui/util/MiuiFeatureUtils$ConfigReader;->mCurrentConfig:Ljava/util/HashMap;

    .line 94
    iput-object p1, p0, Lmiui/util/MiuiFeatureUtils$ConfigReader;->mPath:Ljava/lang/String;

    .line 95
    return-void
.end method

.method private blacklist findEqualSignPos(Ljava/lang/String;)I
    .registers 3
    .param p1, "target"    # Ljava/lang/String;

    .line 201
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 202
    const/4 v0, -0x1

    return v0

    .line 204
    :cond_8
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private blacklist matchGroup(Ljava/lang/String;)Z
    .registers 4
    .param p1, "target"    # Ljava/lang/String;

    .line 190
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 191
    return v1

    .line 194
    :cond_8
    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 195
    const/4 v0, 0x1

    return v0

    .line 197
    :cond_1a
    return v1
.end method

.method private blacklist parseInternal()Z
    .registers 7

    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, "reader":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 114
    .local v1, "finished":Z
    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    iget-object v4, p0, Lmiui/util/MiuiFeatureUtils$ConfigReader;->mPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v2

    .line 115
    const/4 v2, 0x0

    .line 117
    .local v2, "line":Ljava/lang/String;
    :goto_10
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    if-eqz v3, :cond_1b

    .line 118
    invoke-direct {p0, v2}, Lmiui/util/MiuiFeatureUtils$ConfigReader;->parseLine(Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_1a} :catch_25
    .catchall {:try_start_2 .. :try_end_1a} :catchall_23

    goto :goto_10

    .line 120
    :cond_1b
    const/4 v1, 0x1

    .line 124
    .end local v2    # "line":Ljava/lang/String;
    nop

    .line 126
    :try_start_1d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_21

    .line 128
    :goto_20
    goto :goto_55

    .line 127
    :catch_21
    move-exception v2

    goto :goto_20

    .line 124
    :catchall_23
    move-exception v2

    goto :goto_56

    .line 121
    :catch_25
    move-exception v2

    .line 122
    .local v2, "e":Ljava/io/IOException;
    :try_start_26
    const-string v3, "MiuiFeatureUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to parse feature file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmiui/util/MiuiFeatureUtils$ConfigReader;->mPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catchall {:try_start_26 .. :try_end_4e} :catchall_23

    .line 124
    nop

    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_55

    .line 126
    :try_start_51
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_21

    goto :goto_20

    .line 131
    :cond_55
    :goto_55
    return v1

    .line 124
    :goto_56
    if-eqz v0, :cond_5d

    .line 126
    :try_start_58
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_5c

    .line 128
    goto :goto_5d

    .line 127
    :catch_5c
    move-exception v3

    .line 130
    :cond_5d
    :goto_5d
    throw v2
.end method

.method private blacklist parseLine(Ljava/lang/String;)V
    .registers 9
    .param p1, "line"    # Ljava/lang/String;

    .line 136
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 138
    invoke-direct {p0, p1}, Lmiui/util/MiuiFeatureUtils$ConfigReader;->removeComment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 139
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 140
    return-void

    .line 144
    :cond_f
    invoke-direct {p0, p1}, Lmiui/util/MiuiFeatureUtils$ConfigReader;->matchGroup(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5c

    .line 146
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/util/MiuiFeatureUtils$ConfigReader;->mCurrentGroupName:Ljava/lang/String;

    .line 149
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/util/MiuiFeatureUtils$ConfigReader;->mCurrentConfig:Ljava/util/HashMap;

    .line 151
    return-void

    .line 155
    :cond_33
    iget-object v0, p0, Lmiui/util/MiuiFeatureUtils$ConfigReader;->mConfigResult:Ljava/util/HashMap;

    if-nez v0, :cond_3e

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/util/MiuiFeatureUtils$ConfigReader;->mConfigResult:Ljava/util/HashMap;

    .line 160
    :cond_3e
    iget-object v0, p0, Lmiui/util/MiuiFeatureUtils$ConfigReader;->mConfigResult:Ljava/util/HashMap;

    iget-object v1, p0, Lmiui/util/MiuiFeatureUtils$ConfigReader;->mCurrentGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lmiui/util/MiuiFeatureUtils$ConfigReader;->mCurrentConfig:Ljava/util/HashMap;

    .line 161
    if-nez v0, :cond_e2

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/util/MiuiFeatureUtils$ConfigReader;->mCurrentConfig:Ljava/util/HashMap;

    .line 163
    iget-object v1, p0, Lmiui/util/MiuiFeatureUtils$ConfigReader;->mConfigResult:Ljava/util/HashMap;

    iget-object v2, p0, Lmiui/util/MiuiFeatureUtils$ConfigReader;->mCurrentGroupName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_e2

    .line 165
    :cond_5c
    iget-object v0, p0, Lmiui/util/MiuiFeatureUtils$ConfigReader;->mCurrentConfig:Ljava/util/HashMap;

    if-eqz v0, :cond_e2

    .line 166
    invoke-direct {p0, p1}, Lmiui/util/MiuiFeatureUtils$ConfigReader;->findEqualSignPos(Ljava/lang/String;)I

    move-result v0

    .line 168
    .local v0, "equalSignPos":I
    if-lt v0, v1, :cond_e1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    if-ne v0, v2, :cond_6f

    goto/16 :goto_e1

    .line 173
    :cond_6f
    const/4 v2, 0x0

    .line 174
    .local v2, "result":Ljava/lang/Boolean;
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 175
    .local v4, "key":Ljava/lang/String;
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 176
    .local v5, "value":Ljava/lang/String;
    const-string v6, "yes"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d5

    const-string v6, "y"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d5

    .line 177
    const-string v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d5

    const-string v6, "t"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b0

    goto :goto_d5

    .line 179
    :cond_b0
    const-string v1, "no"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d0

    const-string v1, "n"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d0

    .line 180
    const-string v1, "false"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d0

    const-string v1, "f"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d9

    .line 181
    :cond_d0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_d9

    .line 178
    :cond_d5
    :goto_d5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 183
    :cond_d9
    :goto_d9
    if-eqz v2, :cond_e2

    .line 184
    iget-object v1, p0, Lmiui/util/MiuiFeatureUtils$ConfigReader;->mCurrentConfig:Ljava/util/HashMap;

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e2

    .line 169
    .end local v2    # "result":Ljava/lang/Boolean;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_e1
    :goto_e1
    return-void

    .line 187
    .end local v0    # "equalSignPos":I
    :cond_e2
    :goto_e2
    return-void
.end method

.method private blacklist removeComment(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "target"    # Ljava/lang/String;

    .line 208
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 209
    const/4 v0, 0x0

    return-object v0

    .line 212
    :cond_8
    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 213
    .local v0, "pos":I
    if-gez v0, :cond_11

    .line 214
    return-object p1

    .line 216
    :cond_11
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public blacklist getConfigResult()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lmiui/util/MiuiFeatureUtils$ConfigReader;->mConfigResult:Ljava/util/HashMap;

    return-object v0
.end method

.method public blacklist parse()Z
    .registers 2

    .line 99
    iget-object v0, p0, Lmiui/util/MiuiFeatureUtils$ConfigReader;->mPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 100
    invoke-direct {p0}, Lmiui/util/MiuiFeatureUtils$ConfigReader;->parseInternal()Z

    move-result v0

    return v0

    .line 102
    :cond_d
    const/4 v0, 0x0

    return v0
.end method
