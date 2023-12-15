.class public Lsgcam/settings/Pref;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AddPrefForAwb(Levz;)V
    .locals 13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/SGCAM/8.8.224/AWB/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v7, Lcom/Fix/FileFilterAwb;

    invoke-direct {v7}, Lcom/Fix/FileFilterAwb;-><init>()V

    invoke-virtual {v6, v7}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v7

    const/4 v0, 0x0

    if-eqz v7, :cond_0

    array-length v2, v7

    if-ge v0, v2, :cond_0

    new-instance v1, Lcom/mycompany/myapp40/MainActivity$100000001;

    invoke-direct {v1}, Lcom/mycompany/myapp40/MainActivity$100000001;-><init>()V

    invoke-static {v7, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    invoke-static {v7}, Lsgcam/settings/Pref;->getFileArrayToStringArray([Ljava/io/File;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v7}, Lsgcam/settings/Pref;->getFileArrayToStringArray([Ljava/io/File;)[Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    const-string v1, "pref_awb_key"

    const v4, 0x0

    invoke-static/range {v0 .. v4}, Lsgcam/settings/Pref;->GetListPrefArrayBuilder(Levz;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public static AddPrefForLens(Levz;)V
    .locals 13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Button 1 (ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lsgcam/lens/IdentifyIds;->GetBackId_Main:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_manual_camera_id_key_main"

    sget-object v5, Lsgcam/lens/IdentifyIds;->GetBackCameraIDStringEntries:Ljava/lang/String;

    sget-object v6, Lsgcam/lens/IdentifyIds;->GetBackCameraIDStringValues:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    const-string v5, "pref_cat_aux_back_cam_id_key"

    invoke-static/range {v0 .. v5}, Lsgcam/settings/Pref;->GetListPreference(Levz;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    const-string v4, "-1"

    const-string v2, "pref_cameramanual_id_key"

    const-string v1, "Manual input"

    const-string v5, "pref_cat_aux_back_cam_id_key"

    invoke-static {p0, v1, v2, v4, v5}, Lsgcam/settings/Pref;->GetEditTextPreference(Levz;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Button 2 (ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lsgcam/lens/IdentifyIds;->GetBackId_2:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_manual_camera_id_key_2"

    sget-object v5, Lsgcam/lens/IdentifyIds;->GetBackCameraIDStringEntries:Ljava/lang/String;

    sget-object v6, Lsgcam/lens/IdentifyIds;->GetBackCameraIDStringValues:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    const-string v5, "pref_cat_aux_back_cam_id_key"

    invoke-static/range {v0 .. v5}, Lsgcam/settings/Pref;->GetListPreference(Levz;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    const-string v4, "-1"

    const-string v2, "pref_cameramanual_id_key_2"

    const-string v1, "Manual input"

    const-string v5, "pref_cat_aux_back_cam_id_key"

    invoke-static {p0, v1, v2, v4, v5}, Lsgcam/settings/Pref;->GetEditTextPreference(Levz;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Button 3 (ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lsgcam/lens/IdentifyIds;->GetBackId_3:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_manual_camera_id_key_3"

    sget-object v5, Lsgcam/lens/IdentifyIds;->GetBackCameraIDStringEntries:Ljava/lang/String;

    sget-object v6, Lsgcam/lens/IdentifyIds;->GetBackCameraIDStringValues:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    const-string v5, "pref_cat_aux_back_cam_id_key"

    invoke-static/range {v0 .. v5}, Lsgcam/settings/Pref;->GetListPreference(Levz;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    const-string v4, "-1"

    const-string v2, "pref_cameramanual_id_key_3"

    const-string v1, "Manual input"

    const-string v5, "pref_cat_aux_back_cam_id_key"

    invoke-static {p0, v1, v2, v4, v5}, Lsgcam/settings/Pref;->GetEditTextPreference(Levz;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Button 4 (ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lsgcam/lens/IdentifyIds;->GetBackId_4:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_manual_camera_id_key_4"

    sget-object v5, Lsgcam/lens/IdentifyIds;->GetBackCameraIDStringEntries:Ljava/lang/String;

    sget-object v6, Lsgcam/lens/IdentifyIds;->GetBackCameraIDStringValues:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    const-string v5, "pref_cat_aux_back_cam_id_key"

    invoke-static/range {v0 .. v5}, Lsgcam/settings/Pref;->GetListPreference(Levz;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    const-string v4, "-1"

    const-string v2, "pref_cameramanual_id_key_4"

    const-string v1, "Manual input"

    const-string v5, "pref_cat_aux_back_cam_id_key"

    invoke-static {p0, v1, v2, v4, v5}, Lsgcam/settings/Pref;->GetEditTextPreference(Levz;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Button 5 (ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lsgcam/lens/IdentifyIds;->GetBackId_5:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_manual_camera_id_key_5"

    sget-object v5, Lsgcam/lens/IdentifyIds;->GetBackCameraIDStringEntries:Ljava/lang/String;

    sget-object v6, Lsgcam/lens/IdentifyIds;->GetBackCameraIDStringValues:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    const-string v5, "pref_cat_aux_back_cam_id_key"

    invoke-static/range {v0 .. v5}, Lsgcam/settings/Pref;->GetListPreference(Levz;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    const-string v4, "-1"

    const-string v2, "pref_cameramanual_id_key_5"

    const-string v1, "Manual input"

    const-string v5, "pref_cat_aux_back_cam_id_key"

    invoke-static {p0, v1, v2, v4, v5}, Lsgcam/settings/Pref;->GetEditTextPreference(Levz;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Button 1 (ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lsgcam/lens/IdentifyIds;->GetFrontId_Main:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_manual_camera_id_key_front"

    sget-object v5, Lsgcam/lens/IdentifyIds;->GetFrontCameraIDStringEntries:Ljava/lang/String;

    sget-object v6, Lsgcam/lens/IdentifyIds;->GetFrontCameraIDStringValues:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    const-string v5, "pref_cat_aux_front_cam_id_key"

    invoke-static/range {v0 .. v5}, Lsgcam/settings/Pref;->GetListPreference(Levz;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    const-string v4, "-1"

    const-string v2, "pref_cameramanual_id_key_front"

    const-string v1, "Manual input"

    const-string v5, "pref_cat_aux_front_cam_id_key"

    invoke-static {p0, v1, v2, v4, v5}, Lsgcam/settings/Pref;->GetEditTextPreference(Levz;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Button 2 (ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lsgcam/lens/IdentifyIds;->GetFrontId_2:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lsgcam/lens/IdentifyIds;->GetFrontCameraIDStringEntries:Ljava/lang/String;

    sget-object v6, Lsgcam/lens/IdentifyIds;->GetFrontCameraIDStringValues:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const-string v2, "pref_manual_camera_idtele_key_front"

    move-object v0, p0

    const-string v5, "pref_cat_aux_front_cam_id_key"

    invoke-static/range {v0 .. v5}, Lsgcam/settings/Pref;->GetListPreference(Levz;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    const-string v4, "-1"

    const-string v2, "pref_cameramanual_idtele_key_front"

    const-string v1, "Manual input"

    const-string v5, "pref_cat_aux_front_cam_id_key"

    invoke-static {p0, v1, v2, v4, v5}, Lsgcam/settings/Pref;->GetEditTextPreference(Levz;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Button 3 (ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lsgcam/lens/IdentifyIds;->GetFrontId_3:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lsgcam/lens/IdentifyIds;->GetFrontCameraIDStringEntries:Ljava/lang/String;

    sget-object v6, Lsgcam/lens/IdentifyIds;->GetFrontCameraIDStringValues:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const-string v2, "pref_manual_camera_idwide_key_front"

    move-object v0, p0

    const-string v5, "pref_cat_aux_front_cam_id_key"

    invoke-static/range {v0 .. v5}, Lsgcam/settings/Pref;->GetListPreference(Levz;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    const-string v4, "-1"

    const-string v2, "pref_cameramanual_idwide_key_front"

    const-string v1, "Manual input"

    const-string v5, "pref_cat_aux_front_cam_id_key"

    invoke-static {p0, v1, v2, v4, v5}, Lsgcam/settings/Pref;->GetEditTextPreference(Levz;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Button 4 (ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lsgcam/lens/IdentifyIds;->GetFrontId_4:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lsgcam/lens/IdentifyIds;->GetFrontCameraIDStringEntries:Ljava/lang/String;

    sget-object v6, Lsgcam/lens/IdentifyIds;->GetFrontCameraIDStringValues:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const-string v2, "pref_manual_camera_idid4_key_front"

    move-object v0, p0

    const-string v5, "pref_cat_aux_front_cam_id_key"

    invoke-static/range {v0 .. v5}, Lsgcam/settings/Pref;->GetListPreference(Levz;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    const-string v4, "-1"

    const-string v2, "pref_cameramanual_idid4_key_front"

    const-string v1, "Manual input"

    const-string v5, "pref_cat_aux_front_cam_id_key"

    invoke-static {p0, v1, v2, v4, v5}, Lsgcam/settings/Pref;->GetEditTextPreference(Levz;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Button 5 (ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lsgcam/lens/IdentifyIds;->GetFrontId_5:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lsgcam/lens/IdentifyIds;->GetFrontCameraIDStringEntries:Ljava/lang/String;

    sget-object v6, Lsgcam/lens/IdentifyIds;->GetFrontCameraIDStringValues:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const-string v2, "pref_manual_camera_idid5_key_front"

    move-object v0, p0

    const-string v5, "pref_cat_aux_front_cam_id_key"

    invoke-static/range {v0 .. v5}, Lsgcam/settings/Pref;->GetListPreference(Levz;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    const-string v4, "-1"

    const-string v2, "pref_cameramanual_idid5_key_front"

    const-string v1, "Manual input"

    const-string v5, "pref_cat_aux_front_cam_id_key"

    invoke-static {p0, v1, v2, v4, v5}, Lsgcam/settings/Pref;->GetEditTextPreference(Levz;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static AddPrefForLib(Levz;)V
    .locals 13

    move-object v0, p0

    const-string v1, "Load library file"

    const-string v2, "pref_custom_lib_selection_key"

    const-string v5, "pref_screen_custom_library_key"

    const-string v3, "Default"

    invoke-static {v3}, Lsgcam/Shamim;->ConvertStringToStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string v4, "Default"

    invoke-static {v4}, Lsgcam/Shamim;->ConvertStringToStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lsgcam/settings/Pref;->GetListPreference(Levz;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Lsgcam/Shamim;->LibDirectory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v7, Lcom/Fix/FileFilterSo;

    invoke-direct {v7}, Lcom/Fix/FileFilterSo;-><init>()V

    invoke-virtual {v6, v7}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v7

    const/4 v0, 0x0

    if-eqz v7, :cond_0

    array-length v2, v7

    if-ge v0, v2, :cond_0

    new-instance v1, Lcom/mycompany/myapp40/MainActivity$100000001;

    invoke-direct {v1}, Lcom/mycompany/myapp40/MainActivity$100000001;-><init>()V

    invoke-static {v7, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    invoke-static {v7}, Lsgcam/settings/Pref;->getFileArrayToStringArray([Ljava/io/File;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v7}, Lsgcam/settings/Pref;->getFileArrayToStringArray([Ljava/io/File;)[Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    const-string v1, "pref_custom_lib_selection_key"

    const v4, 0x1

    invoke-static/range {v0 .. v4}, Lsgcam/settings/Pref;->GetListPrefArrayBuilder(Levz;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public static AddPrefForLut(Levz;)V
    .locals 13

    move-object v0, p0

    const-string v1, "Load lut"

    const-string v2, "pref_load_lut_key"

    const-string v3, "Default"

    invoke-static {v3}, Lsgcam/Shamim;->ConvertStringToStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string v4, "Default"

    invoke-static {v4}, Lsgcam/Shamim;->ConvertStringToStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_screen_load_lut_key"

    invoke-static/range {v0 .. v5}, Lsgcam/settings/Pref;->GetListPreference(Levz;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/SGCAM/8.8.224/LUT/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v7, Lcom/Fix/FileFilterLut;

    invoke-direct {v7}, Lcom/Fix/FileFilterLut;-><init>()V

    invoke-virtual {v6, v7}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v7

    const/4 v0, 0x0

    if-eqz v7, :cond_0

    array-length v2, v7

    if-ge v0, v2, :cond_0

    new-instance v1, Lcom/mycompany/myapp40/MainActivity$100000001;

    invoke-direct {v1}, Lcom/mycompany/myapp40/MainActivity$100000001;-><init>()V

    invoke-static {v7, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    invoke-static {v7}, Lsgcam/settings/Pref;->getFileArrayToStringArray([Ljava/io/File;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v7}, Lsgcam/settings/Pref;->getFileArrayToStringArray([Ljava/io/File;)[Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    const-string v1, "pref_load_lut_key"

    const v4, 0x1

    invoke-static/range {v0 .. v4}, Lsgcam/settings/Pref;->GetListPrefArrayBuilder(Levz;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public static AddPrefForNoiseModel(Levz;)V
    .locals 13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/SGCAM/8.8.224/NOISE MODELER/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v7, Lcom/Fix/FileFilterNoise;

    invoke-direct {v7}, Lcom/Fix/FileFilterNoise;-><init>()V

    invoke-virtual {v6, v7}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v7

    const/4 v0, 0x0

    if-eqz v7, :cond_0

    array-length v2, v7

    if-ge v0, v2, :cond_0

    new-instance v1, Lcom/mycompany/myapp40/MainActivity$100000001;

    invoke-direct {v1}, Lcom/mycompany/myapp40/MainActivity$100000001;-><init>()V

    invoke-static {v7, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    invoke-static {v7}, Lsgcam/settings/Pref;->getFileArrayToStringArray([Ljava/io/File;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v7}, Lsgcam/settings/Pref;->getFileArrayToStringArray([Ljava/io/File;)[Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    const-string v1, "pref_noise_modeler_key"

    const v4, 0x0

    invoke-static/range {v0 .. v4}, Lsgcam/settings/Pref;->GetListPrefArrayBuilder(Levz;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public static AddSettingsPref(Levz;)V
    .locals 13

    invoke-static {p0}, Lsgcam/Shamim;->AllFileAccess(Levz;)V

    invoke-static {p0}, Lsgcam/settings/Pref;->AddPrefForLens(Levz;)V

    invoke-static {p0}, Lsgcam/settings/Pref;->AddPrefForLib(Levz;)V

    invoke-static {p0}, Lsgcam/settings/Pref;->AddPrefForNoiseModel(Levz;)V

    invoke-static {p0}, Lsgcam/settings/Pref;->AddPrefForAwb(Levz;)V

    invoke-static {p0}, Lsgcam/settings/Pref;->AddPrefForLut(Levz;)V

    invoke-static {p0}, Lsgcam/settings/Pref;->SpecifyPreference(Levz;)V

    const-string v1, "prefscreen_top"

    invoke-virtual {p0, v1}, Levz;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    invoke-static {p0, v1}, Lsgcam/settings/Pref;->SetPreferenceSummary(Levz;Landroid/preference/PreferenceGroup;)V

    invoke-static {p0, v1}, Lsgcam/settings/Pref;->GetAllPreferenceScreen(Levz;Landroid/preference/Preference;)V

    return-void
.end method

.method public static GetAllLensDefaultPref(Levz;ILandroid/preference/Preference;)V
    .locals 12

    invoke-static {p1}, Lsgcam/Shamim;->GetLensTittle(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lsgcam/Shamim;->GetLensSummary(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v6, Landroid/content/Intent;

    invoke-virtual {p0}, Levz;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-class v8, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v7, "pref_screen_extra"

    const-string v8, "pref_screen_default_all_preference_key"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    const-string v8, "pref_screen_title"

    invoke-virtual {v6, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "pref_preference_id_key"

    invoke-virtual {v6, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2, v6}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public static GetAllPreferenceScreen(Levz;Landroid/preference/Preference;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Landroid/preference/PreferenceGroup;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Landroid/preference/PreferenceGroup;

    instance-of v1, v0, Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Levz;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_screen_extra"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, "pref_screen_title"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    invoke-virtual {p0}, Levz;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "pref_preference_id_key"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->setIntent(Landroid/content/Intent;)V

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    invoke-static {p0, v2}, Lsgcam/settings/Pref;->GetAllPreferenceScreen(Levz;Landroid/preference/Preference;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static GetAllPreferences(Levz;)V
    .locals 10

    invoke-virtual {p0}, Levz;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, ""

    const-string v3, "pref_preference_id_key"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Levz;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v6

    if-ge v5, v6, :cond_2

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v6

    invoke-static {v4, v6, v1}, Lsgcam/settings/Pref;->SetCustomPreferenceKey(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;Ljava/lang/String;)V

    instance-of v7, v6, Landroid/preference/PreferenceGroup;

    if-eqz v7, :cond_1

    instance-of v7, v6, Landroid/preference/PreferenceScreen;

    if-nez v7, :cond_1

    move-object v7, v6

    check-cast v7, Landroid/preference/PreferenceGroup;

    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v7}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v9

    if-ge v8, v9, :cond_1

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v9

    invoke-static {v7, v9, v1}, Lsgcam/settings/Pref;->SetCustomPreferenceKey(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static GetEditTextPreference(Levz;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 9

    invoke-virtual {p0, p4}, Levz;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    instance-of v1, v7, Landroid/preference/PreferenceGroup;

    if-eqz v1, :cond_0

    check-cast v7, Landroid/preference/PreferenceGroup;

    if-eqz v7, :cond_0

    new-instance v0, Landroid/preference/EditTextPreference;

    invoke-virtual {p0}, Levz;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p1}, Landroid/preference/EditTextPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p2}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    const-string v2, "Input values"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    const-string v1, "preference_with_margin"

    const v6, 0x1

    invoke-static {v1, v6}, Lsgcam/Shamim;->GetIdFromResources(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setLayoutResource(I)V

    invoke-virtual {v0, p3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_0
    instance-of v1, v7, Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_1

    check-cast v7, Landroid/preference/PreferenceScreen;

    if-eqz v7, :cond_1

    new-instance v0, Landroid/preference/EditTextPreference;

    invoke-virtual {p0}, Levz;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p1}, Landroid/preference/EditTextPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p2}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    const-string v2, "Input values"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    const-string v1, "preference_with_margin"

    const v6, 0x1

    invoke-static {v1, v6}, Lsgcam/Shamim;->GetIdFromResources(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setLayoutResource(I)V

    invoke-virtual {v0, p3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static GetListPrefArrayBuilder(Levz;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 9

    invoke-virtual {p0, p1}, Levz;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    if-eqz v7, :cond_2

    instance-of v1, v7, Landroid/preference/ListPreference;

    if-eqz v1, :cond_2

    check-cast v7, Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    if-nez p4, :cond_0

    invoke-static {p2, v0}, Lsgcam/Shamim;->ConcatArray([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {v0, p2}, Lsgcam/Shamim;->ConcatArray([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    :goto_0
    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    if-nez p4, :cond_1

    invoke-static {p3, v0}, Lsgcam/Shamim;->ConcatArray([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-static {v0, p3}, Lsgcam/Shamim;->ConcatArray([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    :goto_1
    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public static GetListPreference(Levz;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 8

    invoke-virtual {p0, p5}, Levz;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    instance-of v1, v7, Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_0

    check-cast v7, Landroid/preference/PreferenceScreen;

    if-eqz v7, :cond_0

    new-instance v0, Landroid/preference/ListPreference;

    invoke-virtual {p0}, Levz;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    const-string v1, "preference_with_margin"

    const v6, 0x1

    invoke-static {v1, v6}, Lsgcam/Shamim;->GetIdFromResources(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setLayoutResource(I)V

    const-string v1, "quantum_gm_ic_info_outline_black_24"

    const v2, 0x0

    invoke-static {v1, v2}, Lsgcam/Shamim;->GetIdFromResources(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setIcon(I)V

    const-string v1, "%s"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p4}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    const v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    invoke-virtual {v7, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_0
    instance-of v1, v7, Landroid/preference/PreferenceGroup;

    if-eqz v1, :cond_1

    check-cast v7, Landroid/preference/PreferenceGroup;

    if-eqz v7, :cond_1

    new-instance v0, Landroid/preference/ListPreference;

    invoke-virtual {p0}, Levz;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    const-string v1, "preference_with_margin"

    const v6, 0x1

    invoke-static {v1, v6}, Lsgcam/Shamim;->GetIdFromResources(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setLayoutResource(I)V

    const-string v1, "quantum_gm_ic_info_outline_black_24"

    const v2, 0x0

    invoke-static {v1, v2}, Lsgcam/Shamim;->GetIdFromResources(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setIcon(I)V

    const-string v1, "%s"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p4}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    const v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    invoke-virtual {v7, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static GetPrefAsLens(Levz;)V
    .locals 14

    const-string v8, "0"

    const-string v2, "pref_screen_lens_preference_key_0"

    invoke-virtual {p0, v2}, Levz;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v1, "preference_with_margin"

    const v6, 0x1

    invoke-static {v1, v6}, Lsgcam/Shamim;->GetIdFromResources(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    const v3, 0x0

    invoke-static {p0, v3, v2}, Lsgcam/settings/Pref;->GetAllLensDefaultPref(Levz;ILandroid/preference/Preference;)V

    :cond_0
    const-string v2, "pref_screen_lens_preference_key_1"

    invoke-virtual {p0, v2}, Levz;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v1, "preference_with_margin"

    const v6, 0x1

    invoke-static {v1, v6}, Lsgcam/Shamim;->GetIdFromResources(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    const v3, 0x1

    invoke-static {p0, v3, v2}, Lsgcam/settings/Pref;->GetAllLensDefaultPref(Levz;ILandroid/preference/Preference;)V

    :cond_1
    const-string v2, "pref_screen_lens_preference_key_2"

    invoke-virtual {p0, v2}, Levz;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v4, "pref_visible_button_2_key"

    invoke-static {v4, v8}, Lsgcam/lens/SharedPrefValues;->GetSharedPrefStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v1, "preference_with_margin"

    const v6, 0x1

    invoke-static {v1, v6}, Lsgcam/Shamim;->GetIdFromResources(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    const v3, 0x2

    invoke-static {p0, v3, v2}, Lsgcam/settings/Pref;->GetAllLensDefaultPref(Levz;ILandroid/preference/Preference;)V

    goto :goto_0

    :cond_2
    const-string v1, "hide"

    const v6, 0x1

    invoke-static {v1, v6}, Lsgcam/Shamim;->GetIdFromResources(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    :cond_3
    :goto_0
    const-string v2, "pref_screen_lens_preference_key_3"

    invoke-virtual {p0, v2}, Levz;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v4, "pref_visible_button_3_key"

    invoke-static {v4, v8}, Lsgcam/lens/SharedPrefValues;->GetSharedPrefStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v1, "preference_with_margin"

    const v6, 0x1

    invoke-static {v1, v6}, Lsgcam/Shamim;->GetIdFromResources(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    const v3, 0x3

    invoke-static {p0, v3, v2}, Lsgcam/settings/Pref;->GetAllLensDefaultPref(Levz;ILandroid/preference/Preference;)V

    goto :goto_1

    :cond_4
    const-string v1, "hide"

    const v6, 0x1

    invoke-static {v1, v6}, Lsgcam/Shamim;->GetIdFromResources(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    :cond_5
    :goto_1
    const-string v2, "pref_screen_lens_preference_key_4"

    invoke-virtual {p0, v2}, Levz;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_7

    const-string v4, "pref_visible_button_4_key"

    invoke-static {v4, v8}, Lsgcam/lens/SharedPrefValues;->GetSharedPrefStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v1, "preference_with_margin"

    const v6, 0x1

    invoke-static {v1, v6}, Lsgcam/Shamim;->GetIdFromResources(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    const v3, 0x4

    invoke-static {p0, v3, v2}, Lsgcam/settings/Pref;->GetAllLensDefaultPref(Levz;ILandroid/preference/Preference;)V

    goto :goto_2

    :cond_6
    const-string v1, "hide"

    const v6, 0x1

    invoke-static {v1, v6}, Lsgcam/Shamim;->GetIdFromResources(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    :cond_7
    :goto_2
    const-string v2, "pref_screen_lens_preference_key_5"

    invoke-virtual {p0, v2}, Levz;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_9

    const-string v4, "pref_visible_button_5_key"

    invoke-static {v4, v8}, Lsgcam/lens/SharedPrefValues;->GetSharedPrefStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v1, "preference_with_margin"

    const v6, 0x1

    invoke-static {v1, v6}, Lsgcam/Shamim;->GetIdFromResources(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    const v3, 0x5

    invoke-static {p0, v3, v2}, Lsgcam/settings/Pref;->GetAllLensDefaultPref(Levz;ILandroid/preference/Preference;)V

    goto :goto_3

    :cond_8
    const-string v1, "hide"

    const v6, 0x1

    invoke-static {v1, v6}, Lsgcam/Shamim;->GetIdFromResources(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    :cond_9
    :goto_3
    return-void
.end method

.method public static PreventEmptySummery(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    if-eqz p0, :cond_1

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Empty (auto)"

    return-object v1

    :cond_0
    return-object p0

    :cond_1
    const-string v1, "Empty (auto)"

    return-object v1
.end method

.method public static SetCustomPreferenceKey(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 12

    invoke-virtual {p1}, Landroid/preference/Preference;->getDependency()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v7, "pref_awbrec_key"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "pref_aperture"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "pref_originial_reso_key"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "pref_enable_patcher_key"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "pref_shading_mode_key"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    :cond_0
    instance-of v1, p1, Landroid/preference/PreferenceScreen;

    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v7, "pref_awbrec_key"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "pref_aperture"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "pref_originial_reso_key"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "pref_enable_patcher_key"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "pref_shading_mode_key"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    :cond_1
    instance-of v1, p1, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->setChecked(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public static SetPreferenceSummary(Levz;Landroid/preference/PreferenceGroup;)V
    .locals 14

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_6

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    instance-of v2, v1, Landroid/preference/PreferenceGroup;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/preference/PreferenceGroup;

    invoke-static {p0, v1}, Lsgcam/settings/Pref;->SetPreferenceSummary(Levz;Landroid/preference/PreferenceGroup;)V

    goto :goto_4

    :cond_0
    if-nez v1, :cond_1

    goto :goto_4

    :cond_1
    instance-of v3, v1, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    if-nez v3, :cond_2

    goto :goto_3

    :cond_2
    check-cast v1, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    const-string v3, "True"

    :goto_1
    invoke-virtual {v1, v3}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_4
    const-string v3, "False"

    :goto_2
    invoke-virtual {v1, v3}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    :goto_3
    instance-of v3, v1, Landroid/preference/EditTextPreference;

    if-nez v3, :cond_5

    goto :goto_4

    :cond_5
    check-cast v1, Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lsgcam/settings/Pref;->PreventEmptySummery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public static SharedPreferenceChanged(Levz;Ljava/lang/String;)V
    .locals 13

    invoke-virtual {p0}, Levz;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_screen_additional_lens_module_key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lsgcam/settings/Pref;->GetPrefAsLens(Levz;)V

    :cond_0
    const-string v5, "pref_social_app_"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    sget v5, Lsgcam/Shamim;->HdrProcessing:I

    if-nez v5, :cond_1

    const/4 v5, 0x1

    sput v5, Lsgcam/Shamim;->RestartSetting:I

    :cond_1
    invoke-virtual {p0, p1}, Levz;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "EditTextPreference"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    check-cast v0, Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public static SpecifyPreference(Levz;)V
    .locals 3

    invoke-virtual {p0}, Levz;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_screen_additional_lens_module_key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lsgcam/settings/Pref;->GetPrefAsLens(Levz;)V

    :cond_0
    invoke-static {p0}, Lsgcam/settings/Pref;->GetAllPreferences(Levz;)V

    :cond_1
    return-void
.end method

.method public static getFileArrayToStringArray([Ljava/io/File;)[Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    check-cast v0, Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-lt v0, v2, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
