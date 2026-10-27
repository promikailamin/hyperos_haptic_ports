.class Lcom/android/server/soundtrigger_middleware/ObjectPrinter;
.super Ljava/lang/Object;
.source "ObjectPrinter.java"


# static fields
.field public static final kDefaultMaxCollectionLength:I = 0x10


# direct methods
.method constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static print(Ljava/lang/Object;I)Ljava/lang/String;
    .registers 4
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "maxCollectionLength"    # I

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-static {v0, p0, p1}, Lcom/android/server/soundtrigger_middleware/ObjectPrinter;->print(Ljava/lang/StringBuilder;Ljava/lang/Object;I)V

    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static print(Ljava/lang/StringBuilder;Ljava/lang/Object;I)V
    .registers 14
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "maxCollectionLength"    # I

    .line 58
    if-nez p1, :cond_9

    .line 59
    :try_start_2
    const-string/jumbo v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    return-void

    .line 62
    :cond_9
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_11

    .line 63
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    return-void

    .line 66
    :cond_11
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_19

    .line 67
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    return-void

    .line 70
    :cond_19
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_29

    .line 71
    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    return-void

    .line 76
    :cond_29
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_3d

    .line 77
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    return-void

    .line 83
    :cond_3d
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 85
    .local v0, "cls":Ljava/lang/Class;
    const-class v1, Ljava/util/Collection;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_47} :catch_125

    const-string v2, " ]"

    const-string v3, "[ "

    const-string v4, " entries)"

    const-string v5, ", "

    const-string v6, "... (+"

    if-eqz v1, :cond_8e

    .line 86
    :try_start_53
    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    .line 87
    .local v1, "collection":Ljava/util/Collection;
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    .line 89
    .local v3, "length":I
    const/4 v7, 0x0

    .line 90
    .local v7, "isLong":Z
    const/4 v8, 0x0

    .line 91
    .local v8, "i":I
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_63
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 92
    .local v10, "child":Ljava/lang/Object;
    if-lez v8, :cond_72

    .line 93
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    :cond_72
    if-lt v8, p2, :cond_76

    .line 96
    const/4 v7, 0x1

    .line 97
    goto :goto_7d

    .line 99
    :cond_76
    invoke-static {p0, v10, p2}, Lcom/android/server/soundtrigger_middleware/ObjectPrinter;->print(Ljava/lang/StringBuilder;Ljava/lang/Object;I)V

    .line 100
    nop

    .end local v10    # "child":Ljava/lang/Object;
    add-int/lit8 v8, v8, 0x1

    .line 101
    goto :goto_63

    .line 102
    :cond_7d
    :goto_7d
    if-eqz v7, :cond_8a

    .line 103
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    sub-int v5, v3, p2

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    :cond_8a
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    return-void

    .line 111
    .end local v1    # "collection":Ljava/util/Collection;
    .end local v3    # "length":I
    .end local v7    # "isLong":Z
    .end local v8    # "i":I
    :cond_8e
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_eb

    .line 112
    move-object v1, p1

    check-cast v1, Ljava/util/Map;

    .line 113
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    const-string v2, "< "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    .line 115
    .local v2, "length":I
    const/4 v3, 0x0

    .line 116
    .local v3, "isLong":Z
    const/4 v7, 0x0

    .line 117
    .local v7, "i":I
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_ac
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 118
    .local v9, "child":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    if-lez v7, :cond_bd

    .line 119
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    :cond_bd
    if-lt v7, p2, :cond_c1

    .line 122
    const/4 v3, 0x1

    .line 123
    goto :goto_d8

    .line 125
    :cond_c1
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-static {p0, v10, p2}, Lcom/android/server/soundtrigger_middleware/ObjectPrinter;->print(Ljava/lang/StringBuilder;Ljava/lang/Object;I)V

    .line 126
    const-string v10, ": "

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-static {p0, v10, p2}, Lcom/android/server/soundtrigger_middleware/ObjectPrinter;->print(Ljava/lang/StringBuilder;Ljava/lang/Object;I)V

    .line 128
    nop

    .end local v9    # "child":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    add-int/lit8 v7, v7, 0x1

    .line 129
    goto :goto_ac

    .line 130
    :cond_d8
    :goto_d8
    if-eqz v3, :cond_e5

    .line 131
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    sub-int v5, v2, p2

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    :cond_e5
    const-string v4, " >"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    return-void

    .line 139
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .end local v2    # "length":I
    .end local v3    # "isLong":Z
    .end local v7    # "i":I
    :cond_eb
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_120

    .line 140
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 142
    .local v1, "length":I
    const/4 v3, 0x0

    .line 143
    .restart local v3    # "isLong":Z
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_fa
    if-ge v7, v1, :cond_10f

    .line 144
    if-lez v7, :cond_101

    .line 145
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    :cond_101
    if-lt v7, p2, :cond_105

    .line 148
    const/4 v3, 0x1

    .line 149
    goto :goto_10f

    .line 151
    :cond_105
    invoke-static {p1, v7}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v8

    invoke-static {p0, v8, p2}, Lcom/android/server/soundtrigger_middleware/ObjectPrinter;->print(Ljava/lang/StringBuilder;Ljava/lang/Object;I)V

    .line 143
    add-int/lit8 v7, v7, 0x1

    goto :goto_fa

    .line 153
    .end local v7    # "i":I
    :cond_10f
    :goto_10f
    if-eqz v3, :cond_11c

    .line 154
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    sub-int v5, v1, p2

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    :cond_11c
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    return-void

    .line 162
    .end local v1    # "length":I
    .end local v3    # "isLong":Z
    :cond_120
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_123
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_123} :catch_125

    .line 165
    nop

    .line 166
    .end local v0    # "cls":Ljava/lang/Class;
    return-void

    .line 163
    :catch_125
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
