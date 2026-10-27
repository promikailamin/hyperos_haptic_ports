.class Landroid/service/autofill/FillResponse$1;
.super Ljava/lang/Object;
.source "FillResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/FillResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/autofill/FillResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1070
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/FillResponse;
    .registers 24
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 1076
    move-object/from16 v0, p1

    new-instance v1, Landroid/service/autofill/FillResponse$Builder;

    invoke-direct {v1}, Landroid/service/autofill/FillResponse$Builder;-><init>()V

    .line 1077
    .local v1, "builder":Landroid/service/autofill/FillResponse$Builder;
    const-class v2, Landroid/content/pm/ParceledListSlice;

    const/4 v9, 0x0

    invoke-virtual {v0, v9, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/content/pm/ParceledListSlice;

    .line 1078
    .local v10, "datasetSlice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/service/autofill/Dataset;>;"
    if-eqz v10, :cond_18

    invoke-virtual {v10}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    goto :goto_19

    :cond_18
    move-object v2, v9

    :goto_19
    move-object v11, v2

    .line 1079
    .local v11, "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    if-eqz v11, :cond_21

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_22

    :cond_21
    const/4 v2, 0x0

    :goto_22
    move v13, v2

    .line 1080
    .local v13, "datasetCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_24
    if-ge v2, v13, :cond_32

    .line 1081
    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/autofill/Dataset;

    invoke-virtual {v1, v3}, Landroid/service/autofill/FillResponse$Builder;->addDataset(Landroid/service/autofill/Dataset;)Landroid/service/autofill/FillResponse$Builder;

    .line 1080
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 1083
    .end local v2    # "i":I
    :cond_32
    const-class v2, Landroid/service/autofill/SaveInfo;

    invoke-virtual {v0, v9, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/autofill/SaveInfo;

    invoke-virtual {v1, v2}, Landroid/service/autofill/FillResponse$Builder;->setSaveInfo(Landroid/service/autofill/SaveInfo;)Landroid/service/autofill/FillResponse$Builder;

    .line 1084
    const-class v2, Landroid/os/Bundle;

    invoke-virtual {v0, v9, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/service/autofill/FillResponse$Builder;->setClientState(Landroid/os/Bundle;)Landroid/service/autofill/FillResponse$Builder;

    .line 1087
    const-class v2, Landroid/view/autofill/AutofillId;

    invoke-virtual {v0, v9, v2}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, [Landroid/view/autofill/AutofillId;

    .line 1089
    .local v14, "authenticationIds":[Landroid/view/autofill/AutofillId;
    const-class v2, Landroid/content/IntentSender;

    invoke-virtual {v0, v9, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/content/IntentSender;

    .line 1090
    .local v15, "authentication":Landroid/content/IntentSender;
    const-class v2, Landroid/widget/RemoteViews;

    invoke-virtual {v0, v9, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/RemoteViews;

    .line 1091
    .local v16, "presentation":Landroid/widget/RemoteViews;
    const-class v2, Landroid/service/autofill/InlinePresentation;

    invoke-virtual {v0, v9, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/service/autofill/InlinePresentation;

    .line 1092
    .local v17, "inlinePresentation":Landroid/service/autofill/InlinePresentation;
    const-class v2, Landroid/service/autofill/InlinePresentation;

    invoke-virtual {v0, v9, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/service/autofill/InlinePresentation;

    .line 1093
    .local v18, "inlineTooltipPresentation":Landroid/service/autofill/InlinePresentation;
    const-class v2, Landroid/widget/RemoteViews;

    invoke-virtual {v0, v9, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/RemoteViews;

    .line 1094
    .local v19, "dialogPresentation":Landroid/widget/RemoteViews;
    if-eqz v14, :cond_92

    .line 1095
    move-object v2, v1

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    invoke-static/range {v2 .. v8}, Landroid/service/autofill/FillResponse$Builder;->-$$Nest$msetAuthentication(Landroid/service/autofill/FillResponse$Builder;[Landroid/view/autofill/AutofillId;Landroid/content/IntentSender;Landroid/widget/RemoteViews;Landroid/service/autofill/InlinePresentation;Landroid/service/autofill/InlinePresentation;Landroid/widget/RemoteViews;)Landroid/service/autofill/FillResponse$Builder;

    .line 1098
    :cond_92
    const-class v2, Landroid/widget/RemoteViews;

    invoke-virtual {v0, v9, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    .line 1099
    .local v2, "dialogHeader":Landroid/widget/RemoteViews;
    if-eqz v2, :cond_9f

    .line 1100
    invoke-virtual {v1, v2}, Landroid/service/autofill/FillResponse$Builder;->setDialogHeader(Landroid/widget/RemoteViews;)Landroid/service/autofill/FillResponse$Builder;

    .line 1102
    :cond_9f
    const-class v3, Landroid/view/autofill/AutofillId;

    invoke-virtual {v0, v9, v3}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/view/autofill/AutofillId;

    .line 1103
    .local v3, "triggerIds":[Landroid/view/autofill/AutofillId;
    if-eqz v3, :cond_ac

    .line 1104
    invoke-virtual {v1, v3}, Landroid/service/autofill/FillResponse$Builder;->setFillDialogTriggerIds([Landroid/view/autofill/AutofillId;)Landroid/service/autofill/FillResponse$Builder;

    .line 1106
    :cond_ac
    const-class v4, Landroid/widget/RemoteViews;

    invoke-virtual {v0, v9, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/RemoteViews;

    .line 1107
    .local v4, "header":Landroid/widget/RemoteViews;
    if-eqz v4, :cond_b9

    .line 1108
    invoke-virtual {v1, v4}, Landroid/service/autofill/FillResponse$Builder;->setHeader(Landroid/widget/RemoteViews;)Landroid/service/autofill/FillResponse$Builder;

    .line 1110
    :cond_b9
    const-class v5, Landroid/widget/RemoteViews;

    invoke-virtual {v0, v9, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/RemoteViews;

    .line 1111
    .local v5, "footer":Landroid/widget/RemoteViews;
    if-eqz v5, :cond_c6

    .line 1112
    invoke-virtual {v1, v5}, Landroid/service/autofill/FillResponse$Builder;->setFooter(Landroid/widget/RemoteViews;)Landroid/service/autofill/FillResponse$Builder;

    .line 1114
    :cond_c6
    const-class v6, Landroid/service/autofill/UserData;

    invoke-virtual {v0, v9, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/service/autofill/UserData;

    .line 1115
    .local v6, "userData":Landroid/service/autofill/UserData;
    if-eqz v6, :cond_d3

    .line 1116
    invoke-virtual {v1, v6}, Landroid/service/autofill/FillResponse$Builder;->setUserData(Landroid/service/autofill/UserData;)Landroid/service/autofill/FillResponse$Builder;

    .line 1119
    :cond_d3
    const-class v7, Landroid/view/autofill/AutofillId;

    invoke-virtual {v0, v9, v7}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/view/autofill/AutofillId;

    invoke-virtual {v1, v7}, Landroid/service/autofill/FillResponse$Builder;->setIgnoredIds([Landroid/view/autofill/AutofillId;)Landroid/service/autofill/FillResponse$Builder;

    .line 1120
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 1121
    .local v7, "disableDuration":J
    const-wide/16 v20, 0x0

    cmp-long v20, v7, v20

    if-lez v20, :cond_eb

    .line 1122
    invoke-virtual {v1, v7, v8}, Landroid/service/autofill/FillResponse$Builder;->disableAutofill(J)Landroid/service/autofill/FillResponse$Builder;

    .line 1124
    :cond_eb
    const-class v12, Landroid/view/autofill/AutofillId;

    .line 1125
    invoke-virtual {v0, v9, v12}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/view/autofill/AutofillId;

    .line 1126
    .local v9, "fieldClassifactionIds":[Landroid/view/autofill/AutofillId;
    if-eqz v9, :cond_f8

    .line 1127
    invoke-virtual {v1, v9}, Landroid/service/autofill/FillResponse$Builder;->setFieldClassificationIds([Landroid/view/autofill/AutofillId;)Landroid/service/autofill/FillResponse$Builder;

    .line 1130
    :cond_f8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    const/4 v0, 0x1

    if-ne v12, v0, :cond_101

    move v12, v0

    goto :goto_102

    :cond_101
    const/4 v12, 0x0

    :goto_102
    invoke-virtual {v1, v12}, Landroid/service/autofill/FillResponse$Builder;->setContainCaptcha(Z)Landroid/service/autofill/FillResponse$Builder;

    .line 1131
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/service/autofill/FillResponse$Builder;->setFlags(I)Landroid/service/autofill/FillResponse$Builder;

    .line 1132
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 1133
    .local v0, "cancelIds":[I
    invoke-virtual {v1, v0}, Landroid/service/autofill/FillResponse$Builder;->setPresentationCancelIds([I)Landroid/service/autofill/FillResponse$Builder;

    .line 1135
    invoke-virtual {v1}, Landroid/service/autofill/FillResponse$Builder;->build()Landroid/service/autofill/FillResponse;

    move-result-object v12

    .line 1136
    .local v12, "response":Landroid/service/autofill/FillResponse;
    move-object/from16 v20, v0

    .end local v0    # "cancelIds":[I
    .local v20, "cancelIds":[I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/service/autofill/FillResponse;->setRequestId(I)V

    .line 1138
    return-object v12
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1070
    invoke-virtual {p0, p1}, Landroid/service/autofill/FillResponse$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/FillResponse;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/service/autofill/FillResponse;
    .registers 3
    .param p1, "size"    # I

    .line 1143
    new-array v0, p1, [Landroid/service/autofill/FillResponse;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1070
    invoke-virtual {p0, p1}, Landroid/service/autofill/FillResponse$1;->newArray(I)[Landroid/service/autofill/FillResponse;

    move-result-object p1

    return-object p1
.end method
