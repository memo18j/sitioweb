/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sitioweb.controller.interfaz;

import com.sitioweb.model.DTO.DepartamentoDTO;
import com.sitioweb.model.DTO.DocenteDTO;
import com.sitioweb.model.DTO.DocumentoDTO;
import com.sitioweb.model.DTO.ExtensionDTO;
import com.sitioweb.model.DTO.FacultadDTO;
import com.sitioweb.model.DTO.GrupoDTO;
import com.sitioweb.model.DTO.InformacionDTO;
import com.sitioweb.model.DTO.InfraestructuraDTO;
import com.sitioweb.model.DTO.InternacionalizacionDTO;
import com.sitioweb.model.DTO.InvestigacionDTO;
import com.sitioweb.model.DTO.LaboratorioDTO;
import com.sitioweb.model.DTO.NovedadDTO;
import com.sitioweb.model.DTO.PestanaDTO;
import com.sitioweb.model.DTO.ProgramaDTO;
import com.sitioweb.model.DTO.ProyectoInvestDTO;
import com.sitioweb.model.DTO.SemilleroDTO;
import com.sitioweb.model.DTO.TipoExtensionDTO;
import com.sitioweb.model.DTO.TipoInfoDTO;
import com.sitioweb.model.DTO.TipoInfraestructuraDTO;
import com.sitioweb.model.DTO.TipoInternacionalizacionDTO;
import com.sitioweb.model.DTO.TipoInvestigacionDTO;
import com.sitioweb.model.DTO.TipoNovedadDTO;
import com.sitioweb.model.DTO.TipoProgramaDTO;
import com.sitioweb.model.DTO.UsuarioDTO;
import java.util.ArrayList;

/**
 *
 * @author CASA
 */
public interface IControlador {

    //visitas
    public void aniadirVisita() throws Exception;
    public int mostrarVisitas() throws Exception;

    //sesion
    public boolean iniciarSesion(String usuario, String contrasenia) throws Exception;

    //Usuario
    public boolean registrarUsuario(int codusuario, String contrasena, String nombre,
            String correo, int telefono) throws Exception;

    public ArrayList<UsuarioDTO> mostrarUsuario() throws Exception;

    public boolean actualizarDatosUsuario(int codusuario, String contrasena, String nombre,
            String correo, int telefono) throws Exception;

    //Facultad
    public boolean registrarFacultad(int idFacultad, String nombre) throws Exception;

    public ArrayList<FacultadDTO> mostrarFacultad() throws Exception;

    public boolean actualizarDatosFacultad(int idFacultad, String nombre) throws Exception;

    //Pestana
    public boolean registrarPestana(String nombre) throws Exception;

    public ArrayList<PestanaDTO> mostrarPestana() throws Exception;

    public boolean actualizarDatosPestana(int idPestana, String nombre) throws Exception;

    //TipoInfo
    public boolean registrarTipoInfo(String descripcion, int pestana) throws Exception;

    public ArrayList<TipoInfoDTO> mostrarTipoInfo() throws Exception;

    public boolean actualizarDatosTipoInfo(int idinfo, String descripcion, int pestana) throws Exception;

    //Documento
    public boolean registrarDocumento(String nombre, String ruta) throws Exception;

    public ArrayList<DocumentoDTO> mostrarDocumento() throws Exception;

    public boolean actualizarDatosDocumento(int idDocumento, String nombre, String ruta) throws Exception;

    //Informacion
    public boolean registrarInformacion(String descripcion, String nombre,
            String link, String imagen, int tipoinfo) throws Exception;
     public boolean eliminarInformacion(int id, String nombre) throws Exception;

    public ArrayList<InformacionDTO> mostrarInformacion() throws Exception;
    
    public ArrayList<InformacionDTO> mostrarInformacionId(int idInformacion) throws Exception;

    public boolean actualizarDatosInformacion(int idInformacion, String descripcion, String nombre,
            String link, String imagen, int tipoinfo) throws Exception;

    //Departamento
    public boolean registrarDepartamento(String nombre, String director, String descripcion,
            String link) throws Exception;

    public ArrayList<DepartamentoDTO> mostrarDepartamento() throws Exception;
    
    public ArrayList<DepartamentoDTO> mostrarDepartamentoId(int idDepartamento) throws Exception;
    public boolean eliminarDepartamento(int id, String nombre) throws Exception;

    public boolean actualizarDepartamento(int iddpto, String nombre, String director, 
            String descripcion, String link) throws Exception;

    //Docente
    public boolean registrarDocente(String nombre, String correo,
            String tipo, String linkcvlad, int dpto) throws Exception;

    public ArrayList<DocenteDTO> mostrarDocente() throws Exception;
    
    public ArrayList<DocenteDTO> mostrarDocenteId(int idDocente) throws Exception;
    
    public ArrayList<DocenteDTO> mostrarDocenteDpto(int dpto) throws Exception;
    public boolean eliminarDocente(int id, String nombre) throws Exception;

    public boolean actualizarDocente(int idDocente, String nombre, String correo,
            String tipo, String linkcvlad, int dpto) throws Exception;

    //Grupo
    public boolean registrarGrupo(String nombre, String director, String correo,
            String lineainvest, String estatus, String link) throws Exception;

    public ArrayList<GrupoDTO> mostrarGrupo() throws Exception;
    
    public ArrayList<GrupoDTO> mostrarGrupoId(int idGrupo) throws Exception;

    public boolean actualizarGrupo(int idGrupo, String nombre, String director, String correo,
            String lineainvest, String estatus, String link) throws Exception;

    //Laboratorio
    public boolean registrarLaboratorio(String nombre, String tipo, String descripcion) throws Exception;

    public ArrayList<LaboratorioDTO> mostrarLaboratorio() throws Exception;
    
    public ArrayList<LaboratorioDTO> mostrarLaboratorioId(int idLaboratorio) throws Exception;
    
    public ArrayList<LaboratorioDTO> mostrarLaboratorioTipo(String tipo) throws Exception;

    public boolean actualizarLaboratorio(int idLaboratorio, String nombre, String tipo,
            String descripcion) throws Exception;

    //Novedad
    public boolean registrarNovedad(String titulo, String linkimg, String descripcion,
            String fecha, int tiponovedad) throws Exception;

    public ArrayList<NovedadDTO> mostrarNovedad() throws Exception;
    
    public ArrayList<NovedadDTO> mostrarNovedadId(int idNovedad) throws Exception;
    
    public ArrayList<NovedadDTO> mostrarNovedadTipo(int tipo) throws Exception;
    public boolean eliminarNovedad(int id, String nombre) throws Exception;

    public boolean actualizarNovedadDTO(int idNovedad, String titulo, String linkimg,
            String descripcion, String fecha, int tiponovedad) throws Exception;

    //Programa
    public boolean registrarPrograma(String nombre, int tipo, String director, String correoprograma,
            String ubicacion, String telefono, int codsnies, String modalidad, String horario, 
            String imagen, String link) throws Exception;

    public ArrayList<ProgramaDTO> mostrarPrograma() throws Exception;
    
    public ArrayList<ProgramaDTO> mostrarProgramaId(int idPrograma) throws Exception;
    
    public boolean eliminarPrograma(int id, String nombre) throws Exception;

    public boolean actualizarPrograma(int idPrograma, String nombre, int tipo, String director, 
            String correoprograma,String ubicacion, String telefono, int codsnies, 
            String modalidad, String horario, String imagen, String link) throws Exception;

    //ProyectoInvest
    public boolean registrarProyectoInvest(String nombre, String descripcion,
            int grupo) throws Exception;

    public ArrayList<ProyectoInvestDTO> mostrarProyectoInvest() throws Exception;
    
    public ArrayList<ProyectoInvestDTO> mostrarProyectoInvestId(int idProyecto) throws Exception;
    
    public ArrayList<ProyectoInvestDTO> mostrarProyectoInvestGrupo(int grupo) throws Exception;

    public boolean actualizarProyectoInvest(int idProyecto, String nombre, String descripcion,
            int grupo) throws Exception;

    //Semillero
    public boolean registrarSemillero(String nombre, String director, String correo,
            String lineainvest, String link) throws Exception;

    public ArrayList<SemilleroDTO> mostrarSemillero() throws Exception;
    
    public ArrayList<SemilleroDTO> mostrarSemilleroId(int idSemillero) throws Exception;

    public boolean actualizarSemillero(int idSemillero, String nombre, String director,
            String correo, String lineainvest, String link) throws Exception;

    //TipoNovedad
    public boolean registrarTipoNovedad(String nombre) throws Exception;

    public ArrayList<TipoNovedadDTO> mostrarTipoNovedad() throws Exception;

    public boolean actualizarTipoNovedad(int idTipoNov, String nombre) throws Exception;

    //TipoPrograma
    public boolean registrarTipoPrograma(String descripcion) throws Exception;

    public ArrayList<TipoProgramaDTO> mostrarTipoPrograma() throws Exception;

    public boolean actualizarTipoPrograma(int idTipoProg, String descripcion) throws Exception;
    
    //TipoInvestigacion
    public boolean registrarTipoInvestigacion(String nombre) throws Exception;
    
    public ArrayList<TipoInvestigacionDTO> mostrarTipoInvestigacion() throws Exception;
    
    public boolean actualizarTipoInvestigacion(int idTipoInvest, String nombre) throws Exception;
    
    //TipoInfraestructura
    public boolean registrarTipoInfraestructura(String nombre) throws Exception;
    
    public ArrayList<TipoInfraestructuraDTO> mostrarTipoInfraestructura() throws Exception;
    
    public boolean actualizarTipoInfraestructura(int idTipoInfra, String nombre) throws Exception;
    
    //Investigacion
    public boolean registrarInvestigacion(String nombre, String director, String correo, 
            String lineainvest, String estatus, String link, int tipo) throws Exception;
    
    public ArrayList<InvestigacionDTO> mostrarInvestigacion() throws Exception;
    
    public ArrayList<InvestigacionDTO> mostrarInvestigacionId(int idInvestigacion) throws Exception;
    
    public ArrayList<InvestigacionDTO> mostrarInvestigacionTipo(int tipo) throws Exception;
    public boolean eliminarInvestigacion(int id, String nombre) throws Exception;
    
    public boolean actualizarInvestigacion(int idInvestigacion, String nombre, String director, 
            String correo, String lineainvest, String estatus, 
            String link, int tipo) throws Exception;
    
    //Infraestructura
    public boolean registrarInfraestructura(String nombre, String ubicacion, String descripcion, 
            int tipo) throws Exception;
    
    public ArrayList<InfraestructuraDTO> mostrarInfraestructura() throws Exception;
    
    public ArrayList<InfraestructuraDTO> mostrarInfraestructuraId(int idInfra) throws Exception;
    
    public ArrayList<InfraestructuraDTO> mostrarInfraestructuraTipo(int tipo) throws Exception;
    
    public boolean eliminarInfraestructura(int id, String nombre) throws Exception;
    
    public boolean actualizarInfraestructura(int idInfra, String nombre, String ubicacion, 
            String descripcion, int tipo) throws Exception;
    
    //TipoExtension
    public boolean registrarTipoExt(String descripcion) throws Exception;

    public ArrayList<TipoExtensionDTO> mostrarTipoExt() throws Exception;

    public boolean actualizarDatosTipoExt(int idtipo, String descripcion) throws Exception;

    //Extension
    public boolean registrarExtension(int tipoext, String descripcion, String nombre, String link, 
            String documento) throws Exception;
    
    public boolean eliminarExtension(int idExtension, String nombre) throws Exception;

    public ArrayList<ExtensionDTO> mostrarExtension() throws Exception;
    
    public ArrayList<ExtensionDTO> mostrarExtensionId(int idExtension) throws Exception;

    public boolean actualizarDatosExtension(int idExtension, int tipoext, String descripcion, String nombre,
            String link, String documento) throws Exception;
    
    //TipoInternacionalizacion
    public boolean registrarTipoInter(String descripcion) throws Exception;

    public ArrayList<TipoInternacionalizacionDTO> mostrarTipoInter() throws Exception;

    public boolean actualizarDatosTipoInter(int idTipoInternac, String descripcion) throws Exception;
    
    //Internacionalizacion
    public boolean registrarInter(int tipointer, String descripcion, String nombre, 
            String link, String imagen) throws Exception;
    
    public ArrayList<InternacionalizacionDTO> mostrarInter() throws Exception;
    
    public ArrayList<InternacionalizacionDTO> mostrarInterId(int idInternac) throws Exception;
    
    public boolean eliminarInter(int idInternac, String nombre) throws Exception;
    
    public boolean actualizarInter(int idInternac, int tipointer, String descripcion, String nombre, 
            String link, String imagen) throws Exception;
}
