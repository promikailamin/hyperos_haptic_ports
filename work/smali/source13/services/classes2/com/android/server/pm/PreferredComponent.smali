.class public Lcom/android/server/pm/PreferredComponent;
.super Ljava/lang/Object;
.source "PreferredComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PreferredComponent$Callbacks;
    }
.end annotation


# static fields
.field private static final ATTR_ALWAYS:Ljava/lang/String; = "always"

.field private static final ATTR_MATCH:Ljava/lang/String; = "match"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_SET:Ljava/lang/String; = "set"

.field private static final TAG_SET:Ljava/lang/String; = "set"


# instance fields
.field public mAlways:Z

.field private final mCallbacks:Lcom/android/server/pm/PreferredComponent$Callbacks;

.field public final mComponent:Landroid/content/ComponentName;

.field public final mMatch:I

.field private mParseError:Ljava/lang/String;

.field final mSetClasses:[Ljava/lang/String;

.field final mSetComponents:[Ljava/lang/String;

.field final mSetPackages:[Ljava/lang/String;

.field final mShortComponent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PreferredComponent$Callbacks;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Z)V
    .registers 14
    .param p1, "callbacks"    # Lcom/android/server/pm/PreferredComponent$Callbacks;
    .param p2, "match"    # I
    .param p3, "set"    # [Landroid/content/ComponentName;
    .param p4, "component"    # Landroid/content/ComponentName;
    .param p5, "always"    # Z

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/android/server/pm/PreferredComponent;->mCallbacks:Lcom/android/server/pm/PreferredComponent$Callbacks;

    .line 69
    const/high16 v0, 0xfff0000

    and-int/2addr v0, p2

    iput v0, p0, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    .line 70
    iput-object p4, p0, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    .line 71
    iput-boolean p5, p0, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    .line 72
    invoke-virtual {p4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    .line 74
    if-eqz p3, :cond_52

    .line 75
    array-length v1, p3

    .line 76
    .local v1, "N":I
    new-array v2, v1, [Ljava/lang/String;

    .line 77
    .local v2, "myPackages":[Ljava/lang/String;
    new-array v3, v1, [Ljava/lang/String;

    .line 78
    .local v3, "myClasses":[Ljava/lang/String;
    new-array v4, v1, [Ljava/lang/String;

    .line 79
    .local v4, "myComponents":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_21
    if-ge v5, v1, :cond_4b

    .line 80
    aget-object v6, p3, v5

    .line 81
    .local v6, "cn":Landroid/content/ComponentName;
    if-nez v6, :cond_2e

    .line 82
    iput-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    .line 83
    iput-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    .line 84
    iput-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    .line 85
    return-void

    .line 87
    :cond_2e
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v5

    .line 88
    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    .line 89
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    .line 79
    .end local v6    # "cn":Landroid/content/ComponentName;
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    .line 91
    .end local v5    # "i":I
    :cond_4b
    iput-object v2, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    .line 92
    iput-object v3, p0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    .line 93
    iput-object v4, p0, Lcom/android/server/pm/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    .line 94
    .end local v1    # "N":I
    .end local v2    # "myPackages":[Ljava/lang/String;
    .end local v3    # "myClasses":[Ljava/lang/String;
    .end local v4    # "myComponents":[Ljava/lang/String;
    goto :goto_58

    .line 95
    :cond_52
    iput-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    .line 96
    iput-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    .line 97
    iput-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    .line 99
    :goto_58
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PreferredComponent$Callbacks;Landroid/util/TypedXmlPullParser;)V
    .registers 19
    .param p1, "callbacks"    # Lcom/android/server/pm/PreferredComponent$Callbacks;
    .param p2, "parser"    # Landroid/util/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 103
    move-object/from16 v2, p1

    iput-object v2, v0, Lcom/android/server/pm/PreferredComponent;->mCallbacks:Lcom/android/server/pm/PreferredComponent$Callbacks;

    .line 104
    const/4 v3, 0x0

    const-string/jumbo v4, "name"

    invoke-interface {v1, v3, v4}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    .line 105
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    .line 106
    if-nez v6, :cond_32

    .line 107
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad activity name "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    .line 109
    :cond_32
    const-string/jumbo v5, "match"

    const/4 v6, 0x0

    invoke-interface {v1, v3, v5, v6}, Landroid/util/TypedXmlPullParser;->getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    .line 110
    const-string/jumbo v5, "set"

    invoke-interface {v1, v3, v5, v6}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    .line 111
    .local v6, "setCount":I
    const-string v7, "always"

    const/4 v8, 0x1

    invoke-interface {v1, v3, v7, v8}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v0, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    .line 113
    if-lez v6, :cond_51

    new-array v7, v6, [Ljava/lang/String;

    goto :goto_52

    :cond_51
    move-object v7, v3

    .line 114
    .local v7, "myPackages":[Ljava/lang/String;
    :goto_52
    if-lez v6, :cond_57

    new-array v9, v6, [Ljava/lang/String;

    goto :goto_58

    :cond_57
    move-object v9, v3

    .line 115
    .local v9, "myClasses":[Ljava/lang/String;
    :goto_58
    if-lez v6, :cond_5d

    new-array v10, v6, [Ljava/lang/String;

    goto :goto_5e

    :cond_5d
    move-object v10, v3

    .line 117
    .local v10, "myComponents":[Ljava/lang/String;
    :goto_5e
    const/4 v11, 0x0

    .line 119
    .local v11, "setPos":I
    invoke-interface/range {p2 .. p2}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v12

    .line 121
    .local v12, "outerDepth":I
    :goto_63
    invoke-interface/range {p2 .. p2}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v13

    move v14, v13

    .local v14, "type":I
    if-eq v13, v8, :cond_137

    const/4 v13, 0x3

    if-ne v14, v13, :cond_73

    .line 123
    invoke-interface/range {p2 .. p2}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v15

    if-le v15, v12, :cond_137

    .line 124
    :cond_73
    if-eq v14, v13, :cond_131

    const/4 v13, 0x4

    if-ne v14, v13, :cond_7a

    .line 126
    goto/16 :goto_131

    .line 129
    :cond_7a
    invoke-interface/range {p2 .. p2}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 132
    .local v13, "tagName":Ljava/lang/String;
    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_104

    .line 133
    invoke-interface {v1, v3, v4}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 134
    .local v15, "name":Ljava/lang/String;
    if-nez v15, :cond_a6

    .line 135
    iget-object v3, v0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    if-nez v3, :cond_100

    .line 136
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No name in set tag in preferred activity "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v8, v0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    goto :goto_100

    .line 139
    :cond_a6
    if-lt v11, v6, :cond_c4

    .line 140
    iget-object v3, v0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    if-nez v3, :cond_100

    .line 141
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Too many set tags in preferred activity "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v8, v0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    goto :goto_100

    .line 145
    :cond_c4
    invoke-static {v15}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 146
    .local v3, "cn":Landroid/content/ComponentName;
    if-nez v3, :cond_f0

    .line 147
    iget-object v8, v0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    if-nez v8, :cond_100

    .line 148
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad set name "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " in preferred activity "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v8, v0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    goto :goto_100

    .line 152
    :cond_f0
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v11

    .line 153
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v11

    .line 154
    aput-object v15, v10, v11

    .line 155
    add-int/lit8 v11, v11, 0x1

    .line 158
    .end local v3    # "cn":Landroid/content/ComponentName;
    :cond_100
    :goto_100
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 159
    .end local v15    # "name":Ljava/lang/String;
    :cond_103
    goto :goto_12b

    :cond_104
    iget-object v2, v0, Lcom/android/server/pm/PreferredComponent;->mCallbacks:Lcom/android/server/pm/PreferredComponent$Callbacks;

    invoke-interface {v2, v13, v1}, Lcom/android/server/pm/PreferredComponent$Callbacks;->onReadTag(Ljava/lang/String;Landroid/util/TypedXmlPullParser;)Z

    move-result v2

    if-nez v2, :cond_103

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown element: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface/range {p2 .. p2}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PreferredComponent"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 163
    .end local v13    # "tagName":Ljava/lang/String;
    :goto_12b
    move-object/from16 v2, p1

    const/4 v3, 0x0

    const/4 v8, 0x1

    goto/16 :goto_63

    .line 121
    .end local v14    # "type":I
    :cond_131
    :goto_131
    move-object/from16 v2, p1

    const/4 v3, 0x0

    const/4 v8, 0x1

    goto/16 :goto_63

    .line 165
    .restart local v14    # "type":I
    :cond_137
    if-eq v11, v6, :cond_168

    .line 166
    iget-object v2, v0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    if-nez v2, :cond_168

    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not enough set tags (expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    .line 172
    :cond_168
    iput-object v7, v0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    .line 173
    iput-object v9, v0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    .line 174
    iput-object v10, v0, Lcom/android/server/pm/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    .line 175
    return-void
.end method

.method private sameComponent(Landroid/content/ComponentName;)Z
    .registers 5
    .param p1, "comp"    # Landroid/content/ComponentName;

    .line 285
    iget-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    if-nez p1, :cond_8

    goto :goto_29

    .line 288
    :cond_8
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    .line 289
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 290
    const/4 v0, 0x1

    return v0

    .line 292
    :cond_28
    return v1

    .line 286
    :cond_29
    :goto_29
    return v1
.end method


# virtual methods
.method public discardObsoleteComponents(Ljava/util/List;)[Landroid/content/ComponentName;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)[",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    .line 333
    .local p1, "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    if-eqz v0, :cond_5d

    if-nez p1, :cond_7

    goto :goto_5d

    .line 336
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 337
    .local v0, "NQ":I
    iget-object v1, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    array-length v1, v1

    .line 338
    .local v1, "NS":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 339
    .local v2, "aliveComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_14
    if-ge v3, v0, :cond_50

    .line 340
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 341
    .local v4, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 342
    .local v5, "ai":Landroid/content/pm/ActivityInfo;
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1f
    if-ge v6, v1, :cond_4d

    .line 343
    iget-object v7, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    aget-object v7, v7, v6

    iget-object v8, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4a

    iget-object v7, p0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    aget-object v7, v7, v6

    iget-object v8, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4a

    .line 344
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    aget-object v8, v8, v6

    iget-object v9, p0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    aget-object v9, v9, v6

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    goto :goto_4d

    .line 342
    :cond_4a
    add-int/lit8 v6, v6, 0x1

    goto :goto_1f

    .line 339
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v5    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v6    # "j":I
    :cond_4d
    :goto_4d
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 349
    .end local v3    # "i":I
    :cond_50
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/ComponentName;

    return-object v3

    .line 334
    .end local v0    # "NQ":I
    .end local v1    # "NS":I
    .end local v2    # "aliveComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    :cond_5d
    :goto_5d
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/content/ComponentName;

    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "ident"    # Ljava/lang/Object;

    .line 353
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 354
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 353
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 355
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 356
    iget-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mMatch=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 358
    iget v0, p0, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 359
    const-string v0, " mAlways="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 360
    iget-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    if-eqz v0, :cond_57

    .line 361
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  Selected from:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 362
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_40
    iget-object v1, p0, Lcom/android/server/pm/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_57

    .line 363
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "    "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 364
    iget-object v1, p0, Lcom/android/server/pm/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 362
    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    .line 367
    .end local v0    # "i":I
    :cond_57
    return-void
.end method

.method public getParseError()Ljava/lang/String;
    .registers 2

    .line 178
    iget-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    return-object v0
.end method

.method public isSuperset(Ljava/util/List;Z)Z
    .registers 16
    .param p2, "excludeSetupWizardPackage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)Z"
        }
    .end annotation

    .line 296
    .local p1, "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_a

    .line 297
    if-nez p1, :cond_9

    move v1, v2

    :cond_9
    return v1

    .line 299
    :cond_a
    if-nez p1, :cond_d

    .line 300
    return v2

    .line 302
    :cond_d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 303
    .local v0, "NQ":I
    iget-object v3, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    array-length v3, v3

    .line 304
    .local v3, "NS":I
    if-nez p2, :cond_19

    if-ge v3, v0, :cond_19

    .line 305
    return v1

    .line 307
    :cond_19
    const-class v4, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageManagerInternal;

    .line 308
    .local v4, "pmi":Landroid/content/pm/PackageManagerInternal;
    invoke-virtual {v4}, Landroid/content/pm/PackageManagerInternal;->getSetupWizardPackageName()Ljava/lang/String;

    move-result-object v5

    .line 309
    .local v5, "setupWizardPackageName":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_26
    if-ge v6, v0, :cond_62

    .line 310
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 311
    .local v7, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 312
    .local v8, "ai":Landroid/content/pm/ActivityInfo;
    const/4 v9, 0x0

    .line 316
    .local v9, "foundMatch":Z
    if-eqz p2, :cond_3c

    iget-object v10, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3c

    .line 317
    goto :goto_5f

    .line 320
    :cond_3c
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_3d
    if-ge v10, v3, :cond_5c

    .line 321
    iget-object v11, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    aget-object v11, v11, v10

    iget-object v12, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_59

    iget-object v11, p0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    aget-object v11, v11, v10

    iget-object v12, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_59

    .line 322
    const/4 v9, 0x1

    .line 323
    goto :goto_5c

    .line 320
    :cond_59
    add-int/lit8 v10, v10, 0x1

    goto :goto_3d

    .line 326
    .end local v10    # "j":I
    :cond_5c
    :goto_5c
    if-nez v9, :cond_5f

    return v1

    .line 309
    .end local v7    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v8    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v9    # "foundMatch":Z
    :cond_5f
    :goto_5f
    add-int/lit8 v6, v6, 0x1

    goto :goto_26

    .line 328
    .end local v6    # "i":I
    :cond_62
    return v2
.end method

.method public sameSet(Lcom/android/server/pm/PreferredComponent;)Z
    .registers 8
    .param p1, "pc"    # Lcom/android/server/pm/PreferredComponent;

    .line 265
    iget-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_43

    if-eqz p1, :cond_43

    iget-object v0, p1, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    if-eqz v0, :cond_43

    iget-object v0, p1, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    .line 266
    invoke-direct {p0, v0}, Lcom/android/server/pm/PreferredComponent;->sameComponent(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_43

    .line 269
    :cond_14
    iget-object v0, p1, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    array-length v0, v0

    .line 270
    .local v0, "otherPackageCount":I
    iget-object v2, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    array-length v2, v2

    .line 271
    .local v2, "packageCount":I
    if-eq v0, v2, :cond_1d

    .line 272
    return v1

    .line 274
    :cond_1d
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1e
    if-ge v3, v2, :cond_41

    .line 275
    iget-object v4, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    aget-object v4, v4, v3

    iget-object v5, p1, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    iget-object v4, p0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    aget-object v4, v4, v3

    iget-object v5, p1, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    aget-object v5, v5, v3

    .line 276
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3d

    goto :goto_40

    .line 274
    :cond_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 277
    :cond_40
    :goto_40
    return v1

    .line 280
    .end local v3    # "i":I
    :cond_41
    const/4 v1, 0x1

    return v1

    .line 267
    .end local v0    # "otherPackageCount":I
    .end local v2    # "packageCount":I
    :cond_43
    :goto_43
    return v1
.end method

.method public sameSet(Ljava/util/List;ZI)Z
    .registers 20
    .param p2, "excludeSetupWizardPackage"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;ZI)Z"
        }
    .end annotation

    .line 199
    .local p1, "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_d

    .line 200
    if-nez v1, :cond_c

    const/4 v3, 0x1

    :cond_c
    return v3

    .line 202
    :cond_d
    if-nez v1, :cond_10

    .line 203
    return v3

    .line 205
    :cond_10
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    .line 206
    .local v2, "NQ":I
    iget-object v5, v0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    array-length v5, v5

    .line 207
    .local v5, "NS":I
    const-class v6, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageManagerInternal;

    .line 208
    .local v6, "pmi":Landroid/content/pm/PackageManagerInternal;
    invoke-virtual {v6}, Landroid/content/pm/PackageManagerInternal;->getSetupWizardPackageName()Ljava/lang/String;

    move-result-object v7

    .line 209
    .local v7, "setupWizardPackageName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 210
    .local v8, "numMatch":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_25
    if-ge v9, v2, :cond_84

    .line 211
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 212
    .local v10, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v11, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 213
    .local v11, "ai":Landroid/content/pm/ActivityInfo;
    const/4 v12, 0x0

    .line 217
    .local v12, "good":Z
    if-eqz p2, :cond_3d

    iget-object v13, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3d

    .line 218
    move/from16 v14, p3

    goto :goto_81

    .line 223
    :cond_3d
    iget-object v13, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 224
    invoke-virtual {v6, v13}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStates()Landroid/util/SparseArray;

    move-result-object v13

    move/from16 v14, p3

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/pm/pkg/PackageUserState;

    .line 225
    .local v13, "pkgUserState":Lcom/android/server/pm/pkg/PackageUserState;
    if-eqz v13, :cond_59

    invoke-interface {v13}, Lcom/android/server/pm/pkg/PackageUserState;->getInstallReason()I

    move-result v15

    const/4 v4, 0x3

    if-ne v15, v4, :cond_59

    .line 227
    goto :goto_81

    .line 230
    :cond_59
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_5a
    if-ge v4, v5, :cond_7c

    .line 231
    iget-object v15, v0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    aget-object v15, v15, v4

    iget-object v3, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_78

    iget-object v3, v0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    aget-object v3, v3, v4

    iget-object v15, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 232
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_78

    .line 233
    add-int/lit8 v8, v8, 0x1

    .line 234
    const/4 v12, 0x1

    .line 235
    goto :goto_7c

    .line 230
    :cond_78
    add-int/lit8 v4, v4, 0x1

    const/4 v3, 0x0

    goto :goto_5a

    .line 238
    .end local v4    # "j":I
    :cond_7c
    :goto_7c
    if-nez v12, :cond_80

    const/4 v3, 0x0

    return v3

    :cond_80
    const/4 v3, 0x0

    .line 210
    .end local v10    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v11    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v12    # "good":Z
    .end local v13    # "pkgUserState":Lcom/android/server/pm/pkg/PackageUserState;
    :goto_81
    add-int/lit8 v9, v9, 0x1

    goto :goto_25

    :cond_84
    move/from16 v14, p3

    .line 240
    .end local v9    # "i":I
    if-ne v8, v5, :cond_89

    const/4 v3, 0x1

    :cond_89
    return v3
.end method

.method public sameSet([Landroid/content/ComponentName;)Z
    .registers 12
    .param p1, "comps"    # [Landroid/content/ComponentName;

    .line 244
    iget-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 245
    :cond_6
    array-length v2, p1

    .line 246
    .local v2, "NQ":I
    array-length v0, v0

    .line 247
    .local v0, "NS":I
    const/4 v3, 0x0

    .line 248
    .local v3, "numMatch":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_a
    if-ge v4, v2, :cond_3b

    .line 249
    aget-object v5, p1, v4

    .line 250
    .local v5, "cn":Landroid/content/ComponentName;
    const/4 v6, 0x0

    .line 251
    .local v6, "good":Z
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_10
    if-ge v7, v0, :cond_35

    .line 252
    iget-object v8, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    aget-object v8, v8, v7

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_32

    iget-object v8, p0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    aget-object v8, v8, v7

    .line 253
    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_32

    .line 254
    add-int/lit8 v3, v3, 0x1

    .line 255
    const/4 v6, 0x1

    .line 256
    goto :goto_35

    .line 251
    :cond_32
    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    .line 259
    .end local v7    # "j":I
    :cond_35
    :goto_35
    if-nez v6, :cond_38

    return v1

    .line 248
    .end local v5    # "cn":Landroid/content/ComponentName;
    .end local v6    # "good":Z
    :cond_38
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 261
    .end local v4    # "i":I
    :cond_3b
    if-ne v3, v0, :cond_3e

    const/4 v1, 0x1

    :cond_3e
    return v1
.end method

.method public writeToXml(Landroid/util/TypedXmlSerializer;Z)V
    .registers 9
    .param p1, "serializer"    # Landroid/util/TypedXmlSerializer;
    .param p2, "full"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    if-eqz v0, :cond_6

    array-length v0, v0

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 183
    .local v0, "NS":I
    :goto_7
    iget-object v1, p0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "name"

    invoke-interface {p1, v2, v3, v1}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 184
    if-eqz p2, :cond_3c

    .line 185
    iget v1, p0, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    if-eqz v1, :cond_1c

    .line 186
    const-string/jumbo v4, "match"

    invoke-interface {p1, v2, v4, v1}, Landroid/util/TypedXmlSerializer;->attributeIntHex(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 188
    :cond_1c
    iget-boolean v1, p0, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    const-string v4, "always"

    invoke-interface {p1, v2, v4, v1}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 189
    const-string/jumbo v1, "set"

    invoke-interface {p1, v2, v1, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 190
    const/4 v4, 0x0

    .local v4, "s":I
    :goto_2a
    if-ge v4, v0, :cond_3c

    .line 191
    invoke-interface {p1, v2, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 192
    iget-object v5, p0, Lcom/android/server/pm/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-interface {p1, v2, v3, v5}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 193
    invoke-interface {p1, v2, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 190
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    .line 196
    .end local v4    # "s":I
    :cond_3c
    return-void
.end method
